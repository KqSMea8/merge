.class public Lc8/nL;
.super Ljava/lang/Object;
.source "DispatchConstants.java"


# static fields
.field public static AMDC_SERVER_DOMAIN:[Ljava/lang/String; = null

.field public static AMDC_SERVER_FIX_IP:[[Ljava/lang/String; = null

.field public static final ANDROID:Ljava/lang/String; = "android"

.field public static final APPKEY:Ljava/lang/String; = "appkey"

.field public static final APP_NAME:Ljava/lang/String; = "appName"

.field public static final APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final BSSID:Ljava/lang/String; = "bssid"

.field public static final CARRIER:Ljava/lang/String; = "carrier"

.field public static final CHANNEL:Ljava/lang/String; = "channel"

.field public static final CONFIG_VERSION:Ljava/lang/String; = "cv"

.field public static final DEVICEID:Ljava/lang/String; = "deviceId"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final HOSTS:Ljava/lang/String; = "hosts"

.field public static final LATITUDE:Ljava/lang/String; = "lat"

.field public static final LONGTITUDE:Ljava/lang/String; = "lng"

.field public static final MACHINE:Ljava/lang/String; = "machine"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NET_TYPE:Ljava/lang/String; = "netType"

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final PLATFORM:Ljava/lang/String; = "platform"

.field public static final PLATFORM_VERSION:Ljava/lang/String; = "platformVersion"

.field public static final PRE_IP:Ljava/lang/String; = "preIp"

.field public static final SID:Ljava/lang/String; = "sid"

.field public static final SIGN:Ljava/lang/String; = "sign"

.field public static final SIGNTYPE:Ljava/lang/String; = "signType"

.field public static final SIGN_SPLIT_SYMBOL:Ljava/lang/String; = "&"

.field public static final TIMESTAMP:Ljava/lang/String; = "t"

.field public static final VERSION:Ljava/lang/String; = "v"

.field public static final VER_CODE:Ljava/lang/String; = "4.0"

.field public static initHostArray:[Ljava/lang/String; = null

.field public static final serverPath:Ljava/lang/String; = "/amdc/mobileDispatch"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lc8/nL;->initHostArray:[Ljava/lang/String;

    .line 47
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "amdc.m.taobao.com"

    aput-object v1, v0, v4

    const-string/jumbo v1, "amdc.wapa.taobao.com"

    aput-object v1, v0, v5

    const-string/jumbo v1, "amdc.taobao.net"

    aput-object v1, v0, v6

    sput-object v0, Lc8/nL;->AMDC_SERVER_DOMAIN:[Ljava/lang/String;

    .line 53
    new-array v0, v2, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-wide v2, 0x20a4e1024fL

    invoke-static {v2, v3}, Lc8/cM;->longToIP(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-wide v2, 0x20a4e0f67fL

    invoke-static {v2, v3}, Lc8/cM;->longToIP(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-wide v2, 0x18aec047e6L

    invoke-static {v2, v3}, Lc8/cM;->longToIP(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x0

    aput-object v1, v0, v6

    sput-object v0, Lc8/nL;->AMDC_SERVER_FIX_IP:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmdcServerDomain()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lc8/nL;->AMDC_SERVER_DOMAIN:[Ljava/lang/String;

    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/entity/ENV;->getEnvMode()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getAmdcServerFixIp()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lc8/nL;->AMDC_SERVER_FIX_IP:[[Ljava/lang/String;

    invoke-static {}, Lc8/TI;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/entity/ENV;->getEnvMode()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static isAmdcServerDomain(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lc8/nL;->getAmdcServerDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
