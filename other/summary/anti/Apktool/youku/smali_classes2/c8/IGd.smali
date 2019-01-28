.class public Lc8/IGd;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static sDeviceId:Ljava/lang/String;

.field private static sMacAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IGd;->sMacAddr:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, ""

    sput-object v0, Lc8/IGd;->sDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 47
    sget-object v4, Lc8/IGd;->sDeviceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    invoke-static {}, Lc8/IGd;->isPhone()Z

    move-result v4

    if-nez v4, :cond_2

    .line 49
    sget-object v4, Lc8/IGd;->sDeviceId:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v1, "nonce":Ljava/lang/StringBuilder;
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 52
    .local v2, "sn":Ljava/lang/String;
    const-string/jumbo v4, "DeviceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device serial "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p0}, Lc8/IGd;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "mac":Ljava/lang/String;
    const-string/jumbo v4, "DeviceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mac address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/IGd;->sDeviceId:Ljava/lang/String;

    .line 73
    .end local v0    # "mac":Ljava/lang/String;
    .end local v1    # "nonce":Ljava/lang/StringBuilder;
    .end local v2    # "sn":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v3, Lc8/IGd;->sDeviceId:Ljava/lang/String;

    :cond_1
    return-object v3

    .line 70
    :cond_2
    invoke-static {p0}, Lc8/UGd;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/IGd;->sDeviceId:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v5, Lc8/IGd;->sMacAddr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 82
    sget-object v0, Lc8/IGd;->sMacAddr:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "address":Ljava/lang/String;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_4

    .line 86
    const-string/jumbo v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 87
    .local v1, "cm":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 89
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 90
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 91
    const-string/jumbo v5, "wlan0"

    invoke-static {v5}, Lc8/IGd;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_1
    sput-object v0, Lc8/IGd;->sMacAddr:Ljava/lang/String;

    goto :goto_0

    .line 92
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_1

    .line 93
    const-string/jumbo v5, "eth0"

    invoke-static {v5}, Lc8/IGd;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 96
    :cond_3
    const-string/jumbo v5, "wlan0"

    invoke-static {v5}, Lc8/IGd;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 98
    const-string/jumbo v5, "eth0"

    invoke-static {v5}, Lc8/IGd;->getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 103
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_4
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 104
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_1

    .line 105
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 106
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v3, :cond_5

    const/4 v0, 0x0

    :goto_2
    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static getMacAddressWithIfName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "address":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "in":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v2, "reader":Ljava/util/Scanner;
    invoke-virtual {v2}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v2}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    .end local v1    # "in":Ljava/io/InputStream;
    .end local v2    # "reader":Ljava/util/Scanner;
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v3

    const-string/jumbo v3, "DeviceUtils"

    const-string/jumbo v4, "getMacAddressWithIfName File not found Exception"

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :catch_1
    move-exception v3

    const-string/jumbo v3, "DeviceUtils"

    const-string/jumbo v4, "getMacAddressWithIfName IOException"

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isPhone()Z
    .locals 4

    .prologue
    .line 26
    const-string/jumbo v1, "ro.target.product"

    invoke-static {v1}, Lc8/WGd;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    const-string/jumbo v1, "DeviceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current product is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    .line 32
    :goto_0
    return v1

    .line 31
    :cond_0
    const-string/jumbo v1, "DeviceUtils"

    const-string/jumbo v2, "current product is phone"

    invoke-static {v1, v2}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    goto :goto_0
.end method
