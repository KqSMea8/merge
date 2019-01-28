.class public Lc8/cGo;
.super Ljava/lang/Object;
.source "VipNetworkState.java"


# static fields
.field public static final NETWORK_TYPE_MOBILE:B = 0x1t

.field public static final NETWORK_TYPE_UNCONNECT:B = 0x0t

.field public static final NETWORK_TYPE_WIFI:B = 0x2t

.field public static final TAG:Ljava/lang/String;

.field public static final mLock:Ljava/lang/Object;

.field private static final networkTypeArray:[Ljava/lang/String;


# instance fields
.field private _type:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    const-class v0, Lc8/cGo;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/cGo;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/cGo;->mLock:Ljava/lang/Object;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "mobile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "gprs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "3g"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "4g"

    aput-object v2, v0, v1

    sput-object v0, Lc8/cGo;->networkTypeArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-byte v0, p0, Lc8/cGo;->_type:B

    return-void
.end method

.method public static getConnectivityState(Landroid/content/Context;)B
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 59
    sget-object v7, Lc8/cGo;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 61
    :try_start_0
    const-string/jumbo v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v1, 0x0

    .line 63
    .local v1, "mobile":Landroid/net/NetworkInfo$State;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 64
    .local v2, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 68
    :cond_0
    const/4 v3, 0x0

    .line 69
    .local v3, "wifi":Landroid/net/NetworkInfo$State;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 70
    .local v4, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 73
    :cond_1
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v8, :cond_2

    .line 74
    const-string/jumbo v5, "Network"

    const-string/jumbo v6, "Network state: getConnectivityState >> type == NETWORK_TYPE_WIFI"

    invoke-static {v5, v6}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v5, 0x2

    monitor-exit v7

    .line 81
    :goto_0
    return v5

    .line 76
    :cond_2
    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v8, :cond_3

    .line 77
    const-string/jumbo v6, "Network"

    const-string/jumbo v8, "Network state: getConnectivityState >> type == NETWORK_TYPE_MOBILE"

    invoke-static {v6, v8}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    monitor-exit v7

    goto :goto_0

    .line 83
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mobile":Landroid/net/NetworkInfo$State;
    .end local v2    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wifi":Landroid/net/NetworkInfo$State;
    .end local v4    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 80
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "mobile":Landroid/net/NetworkInfo$State;
    .restart local v2    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "wifi":Landroid/net/NetworkInfo$State;
    .restart local v4    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "Network"

    const-string/jumbo v8, "Network state: getConnectivityState >> type == NETWORK_TYPE_NULL"

    invoke-static {v5, v8}, Lc8/aGo;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 41
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 43
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 44
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 45
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 46
    const/4 v3, 0x1

    .line 51
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v3

    .line 44
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getNetworkType()I
    .locals 1

    .prologue
    .line 26
    iget-byte v0, p0, Lc8/cGo;->_type:B

    return v0
.end method

.method public getNetworkTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lc8/cGo;->networkTypeArray:[Ljava/lang/String;

    iget-byte v1, p0, Lc8/cGo;->_type:B

    aget-object v0, v0, v1

    return-object v0
.end method

.method public setNetworkType(B)V
    .locals 2
    .param p1, "type"    # B

    .prologue
    .line 34
    sget-object v1, Lc8/cGo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    iput-byte p1, p0, Lc8/cGo;->_type:B

    .line 36
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
