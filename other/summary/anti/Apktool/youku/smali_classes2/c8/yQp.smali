.class public Lc8/yQp;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkStateReceiver"

.field public static volatile apn:Ljava/lang/String;

.field public static volatile bssid:Ljava/lang/String;

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static volatile ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lc8/yQp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 33
    sput-object v0, Lc8/yQp;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    const-string/jumbo v0, ""

    sput-object v0, Lc8/yQp;->ssid:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    sput-object v0, Lc8/yQp;->bssid:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "unknown"

    sput-object v0, Lc8/yQp;->apn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/yQp;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lc8/yQp;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/yQp;->updateNetworkStatus(Landroid/content/Context;)V

    return-void
.end method

.method private parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 136
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 137
    const-string/jumbo v0, "cmwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "cmwap"

    .line 157
    :goto_0
    return-object v0

    .line 139
    :cond_0
    const-string/jumbo v0, "uniwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const-string/jumbo v0, "uniwap"

    goto :goto_0

    .line 141
    :cond_1
    const-string/jumbo v0, "3gwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-string/jumbo v0, "3gwap"

    goto :goto_0

    .line 143
    :cond_2
    const-string/jumbo v0, "ctwap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string/jumbo v0, "ctwap"

    goto :goto_0

    .line 145
    :cond_3
    const-string/jumbo v0, "cmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string/jumbo v0, "cmnet"

    goto :goto_0

    .line 147
    :cond_4
    const-string/jumbo v0, "uninet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const-string/jumbo v0, "uninet"

    goto :goto_0

    .line 149
    :cond_5
    const-string/jumbo v0, "3gnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    const-string/jumbo v0, "3gnet"

    goto :goto_0

    .line 151
    :cond_6
    const-string/jumbo v0, "ctnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    const-string/jumbo v0, "ctnet"

    goto :goto_0

    .line 154
    :cond_7
    const-string/jumbo v0, "unknown"

    goto :goto_0

    .line 157
    :cond_8
    const-string/jumbo v0, "unknown"

    goto :goto_0
.end method

.method private updateNetworkStatus(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 58
    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const/4 v0, 0x0

    .line 64
    .local v0, "info":Landroid/net/NetworkInfo;
    :try_start_0
    sget-object v6, Lc8/yQp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v6, :cond_2

    .line 65
    const-string/jumbo v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    sput-object v6, Lc8/yQp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 67
    :cond_2
    sget-object v6, Lc8/yQp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 72
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_5

    .line 73
    :cond_3
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 74
    const-string/jumbo v6, "mtopsdk.NetworkStateReceiver"

    const-string/jumbo v7, "[updateNetworkStatus]no network"

    invoke-static {v6, v7}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_4
    const-string/jumbo v6, "nq"

    sget-object v7, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v7}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v6, "netType"

    sget-object v7, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v7}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "mtopsdk.NetworkStateReceiver"

    const-string/jumbo v7, "getNetworkInfo error."

    invoke-static {v6, v7, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 81
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_5
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 82
    const-string/jumbo v6, "mtopsdk.NetworkStateReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[updateNetworkStatus] NetworkInfo isConnected="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_6
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 85
    .local v4, "type":I
    if-nez v4, :cond_8

    .line 86
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 87
    .local v2, "subType":I
    invoke-static {v2}, Lc8/zQp;->getNetworkClassByType(I)Lmtopsdk/xstate/NetworkClassEnum;

    move-result-object v1

    .line 88
    .local v1, "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 89
    const-string/jumbo v6, "mtopsdk.NetworkStateReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[updateNetworkStatus]Mobile network,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/yQp;->parseExtraInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lc8/yQp;->apn:Ljava/lang/String;

    .line 92
    const-string/jumbo v6, "nq"

    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v6, "netType"

    invoke-static {v2}, Lc8/zQp;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v1    # "netClassEnum":Lmtopsdk/xstate/NetworkClassEnum;
    .end local v2    # "subType":I
    :cond_8
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 96
    const/4 v5, 0x0

    .line 98
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :try_start_1
    sget-object v6, Lc8/yQp;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_9

    .line 99
    const-string/jumbo v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    sput-object v6, Lc8/yQp;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    :cond_9
    sget-object v6, Lc8/yQp;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 106
    :goto_2
    if-eqz v5, :cond_a

    .line 107
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lc8/yQp;->bssid:Ljava/lang/String;

    .line 108
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lc8/yQp;->ssid:Ljava/lang/String;

    .line 111
    :cond_a
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 112
    const-string/jumbo v6, "mtopsdk.NetworkStateReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[updateNetworkStatus]WIFI network.ssid= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lc8/yQp;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", bssid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lc8/yQp;->bssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_b
    const-string/jumbo v6, "nq"

    sget-object v7, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v7}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string/jumbo v6, "netType"

    sget-object v7, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v7}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    :catch_1
    move-exception v3

    .line 103
    .restart local v3    # "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "mtopsdk.NetworkStateReceiver"

    const-string/jumbo v7, "[updateNetworkStatus]getWifiInfo error."

    invoke-static {v6, v7, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string/jumbo v0, "mtopsdk.NetworkStateReceiver"

    const-string/jumbo v1, "[onReceive] networkStateReceiver onReceive"

    invoke-static {v0, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v0, Lc8/xQp;

    invoke-direct {v0, p0, p1}, Lc8/xQp;-><init>(Lc8/yQp;Landroid/content/Context;)V

    invoke-static {v0}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 53
    return-void
.end method
