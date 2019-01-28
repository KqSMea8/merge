.class public Lc8/yAb;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/vAb;,
        Lc8/wAb;,
        Lc8/xAb;
    }
.end annotation


# static fields
.field public static final NETWORK_CLASS_2_G:Ljava/lang/String; = "2G"

.field public static final NETWORK_CLASS_3_G:Ljava/lang/String; = "3G"

.field public static final NETWORK_CLASS_4_G:Ljava/lang/String; = "4G"

.field public static final NETWORK_CLASS_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final NETWORK_CLASS_WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static final WIFIADDRESS_UNKNOWN:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static arrayOfString:[Ljava/lang/String;

.field private static mHaveNetworkStatus:Z

.field private static netStatusChecker:Lc8/wAb;

.field private static netStatusReceiver:Lc8/xAb;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Unknown"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    .line 30
    sput-boolean v3, Lc8/yAb;->mHaveNetworkStatus:Z

    .line 250
    new-instance v0, Lc8/xAb;

    invoke-direct {v0, v4}, Lc8/xAb;-><init>(Lc8/vAb;)V

    sput-object v0, Lc8/yAb;->netStatusReceiver:Lc8/xAb;

    .line 251
    new-instance v0, Lc8/wAb;

    invoke-direct {v0, v4}, Lc8/wAb;-><init>(Lc8/vAb;)V

    sput-object v0, Lc8/yAb;->netStatusChecker:Lc8/wAb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method static synthetic access$200()Lc8/wAb;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lc8/yAb;->netStatusChecker:Lc8/wAb;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lc8/yAb;->getNetworkStatus(Landroid/content/Context;)V

    return-void
.end method

.method private static convertIntToIp(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    ushr-int/lit8 v1, p0, 0x18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAccess(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Lc8/yAb;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "networkStatus":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method public static getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 136
    :try_start_0
    invoke-static {p0}, Lc8/yAb;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "networkStatus":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "2G/3G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 140
    .restart local v0    # "networkStatus":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "Unknown"

    goto :goto_0

    .line 143
    .end local v0    # "networkStatus":[Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Unknown"

    goto :goto_0
.end method

.method private static getNetworkClass(I)Ljava/lang/String;
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 63
    packed-switch p0, :pswitch_data_0

    .line 83
    const-string/jumbo v0, "Unknown"

    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    const-string/jumbo v0, "2G"

    goto :goto_0

    .line 79
    :pswitch_1
    const-string/jumbo v0, "3G"

    goto :goto_0

    .line 81
    :pswitch_2
    const-string/jumbo v0, "4G"

    goto :goto_0

    .line 63
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
    .end packed-switch
.end method

.method public static getNetworkState(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    sget-boolean v0, Lc8/yAb;->mHaveNetworkStatus:Z

    if-nez v0, :cond_0

    .line 120
    invoke-static {p0}, Lc8/yAb;->getNetworkStatus(Landroid/content/Context;)V

    .line 122
    :cond_0
    sget-object v0, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized getNetworkStatus(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 281
    const-class v5, Lc8/yAb;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 282
    .local v2, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 286
    .restart local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 287
    .local v1, "localConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_3

    .line 288
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    .end local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    sget-boolean v4, Lc8/yAb;->mHaveNetworkStatus:Z

    if-nez v4, :cond_0

    .line 308
    const/4 v4, 0x1

    sput-boolean v4, Lc8/yAb;->mHaveNetworkStatus:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 291
    .restart local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "localPackageManager":Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 292
    .local v3, "nInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 293
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v7, v4, :cond_4

    .line 294
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Wi-Fi"

    aput-object v7, v4, v6

    goto :goto_1

    .line 295
    :cond_4
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 296
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "2G/3G"

    aput-object v7, v4, v6

    .line 297
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    goto :goto_1

    .line 300
    :cond_5
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6

    .line 301
    sget-object v4, Lc8/yAb;->arrayOfString:[Ljava/lang/String;

    const/4 v6, 0x1

    const-string/jumbo v7, "Unknown"

    aput-object v7, v4, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public static getNetworkType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 35
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v4, "Unknown"

    .line 59
    :goto_0
    return-object v4

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 41
    .local v3, "pManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 42
    const-string/jumbo v4, "Unknown"

    goto :goto_0

    .line 44
    :cond_1
    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 45
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 46
    .local v2, "nInfo":Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    .line 47
    const-string/jumbo v4, "Unknown"

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 51
    const-string/jumbo v4, "Wi-Fi"

    goto :goto_0

    .line 52
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_4

    .line 53
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    invoke-static {v4}, Lc8/yAb;->getNetworkClass(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v0    # "cManager":Landroid/net/ConnectivityManager;
    .end local v2    # "nInfo":Landroid/net/NetworkInfo;
    .end local v3    # "pManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 59
    :cond_4
    const-string/jumbo v4, "Unknown"

    goto :goto_0
.end method

.method public static getWifiAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 149
    invoke-static {}, Lc8/yAb;->getWifiMacID23()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lc8/yAb;->getWifiMacID22(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWifiIpAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 200
    if-eqz p0, :cond_0

    .line 202
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 203
    .local v0, "wifiManage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 204
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    invoke-static {v3}, Lc8/yAb;->convertIntToIp(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 213
    .end local v0    # "wifiManage":Landroid/net/wifi/WifiManager;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getWifiMacID22(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    if-eqz p0, :cond_2

    .line 177
    :try_start_0
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 178
    .local v2, "wifimanage":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 179
    .local v1, "wifiinfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const-string/jumbo v0, "00:00:00:00:00:00"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-object v0

    .line 186
    .restart local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .restart local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string/jumbo v0, "00:00:00:00:00:00"

    goto :goto_0

    .end local v1    # "wifiinfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifimanage":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    .line 191
    :cond_2
    const-string/jumbo v0, "00:00:00:00:00:00"

    goto :goto_0
.end method

.method private static getWifiMacID23()Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 157
    const-string/jumbo v3, "00:00:00:00:00:00"

    .line 159
    .local v3, "macAddress":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "wlan0"

    invoke-static {v5}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 161
    .local v4, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 162
    .local v2, "mac":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_1

    .line 164
    const-string/jumbo v6, "%02X%s"

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v8, v2, v1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v5

    const/4 v8, 0x1

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    const-string/jumbo v5, ":"

    :goto_1
    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const-string/jumbo v5, ""

    goto :goto_1

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 171
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v2    # "mac":[B
    .end local v4    # "networkInterface":Ljava/net/NetworkInterface;
    :goto_2
    return-object v3

    .line 169
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public static isConnectInternet(Landroid/content/Context;)Z
    .locals 5
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 95
    if-eqz p0, :cond_1

    .line 97
    :try_start_0
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    .local v0, "conManager":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, "localPackageManager":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 103
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 115
    .end local v0    # "conManager":Landroid/net/ConnectivityManager;
    .end local v1    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 107
    .restart local v0    # "conManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "localPackageManager":Landroid/content/pm/PackageManager;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .end local v0    # "conManager":Landroid/net/ConnectivityManager;
    .end local v1    # "localPackageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v3

    .line 115
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 218
    if-eqz p0, :cond_0

    .line 220
    :try_start_0
    invoke-static {p0}, Lc8/yAb;->getNetworkState(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string/jumbo v2, "Wi-Fi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 227
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    if-nez p0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lc8/yAb;->netStatusReceiver:Lc8/xAb;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    sget-object v2, Lc8/yAb;->netStatusChecker:Lc8/wAb;

    invoke-virtual {v2, p0}, Lc8/wAb;->setContext(Landroid/content/Context;)Lc8/wAb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static unRegister(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    if-nez p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    sget-object v0, Lc8/yAb;->netStatusReceiver:Lc8/xAb;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lc8/yAb;->netStatusReceiver:Lc8/xAb;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
