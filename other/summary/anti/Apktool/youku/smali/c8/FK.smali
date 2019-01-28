.class public Lc8/FK;
.super Ljava/lang/Object;
.source "NetworkStatusHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/EK;,
        Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    }
.end annotation


# static fields
.field private static listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lc8/EK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lc8/FK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lc8/FK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static addStatusChangeListener(Lc8/EK;)V
    .locals 1
    .param p0, "listener"    # Lc8/EK;

    .prologue
    .line 67
    sget-object v0, Lc8/FK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public static getApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lc8/IK;->apn:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lc8/IK;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lc8/IK;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public static getProxyType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 152
    .local v0, "status":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lc8/FK;->getWifiProxy()Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    const-string/jumbo v1, "proxy"

    .line 159
    :goto_0
    return-object v1

    .line 154
    :cond_0
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lc8/IK;->apn:Ljava/lang/String;

    const-string/jumbo v2, "wap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const-string/jumbo v1, "wap"

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lc8/TI;->getProxySetting()Lc8/YL;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    const-string/jumbo v1, "auth"

    goto :goto_0

    .line 159
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getSimOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lc8/IK;->simOp:Ljava/lang/String;

    return-object v0
.end method

.method public static getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    return-object v0
.end method

.method public static getWifiBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lc8/IK;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method public static getWifiProxy()Landroid/util/Pair;
    .locals 2
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
    .line 168
    sget-object v0, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/IK;->proxy:Landroid/util/Pair;

    goto :goto_0
.end method

.method public static getWifiSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lc8/IK;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public static isConnected()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 130
    sget-object v2, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v2, v3, :cond_1

    .line 135
    .local v0, "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v1

    .line 134
    .end local v0    # "info":Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lc8/IK;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 135
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isProxy()Z
    .locals 3

    .prologue
    .line 139
    sget-object v1, Lc8/IK;->status:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .line 140
    .local v1, "status":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    sget-object v0, Lc8/IK;->apn:Ljava/lang/String;

    .line 141
    .local v0, "apn":Ljava/lang/String;
    sget-object v2, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lc8/FK;->getWifiProxy()Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lc8/TI;->getProxySetting()Lc8/YL;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 144
    :cond_1
    const/4 v2, 0x1

    .line 146
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isRoaming()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lc8/IK;->isRoaming:Z

    return v0
.end method

.method static notifyStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .locals 1
    .param p0, "status"    # Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    .prologue
    .line 75
    new-instance v0, Lc8/DK;

    invoke-direct {v0, p0}, Lc8/DK;-><init>(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V

    invoke-static {v0}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void
.end method

.method public static printNetworkDetail()V
    .locals 7

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Lc8/FK;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    .line 177
    .local v0, "networkStatus":Lanet/channel/status/NetworkStatusHelper$NetworkStatus;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 178
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\nNetwork detail*******************************\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v3, "Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    const-string/jumbo v3, "Subtype: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/FK;->getNetworkSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->NO:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v3, :cond_0

    .line 182
    invoke-virtual {v0}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    const-string/jumbo v3, "Apn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/FK;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    const-string/jumbo v3, "Carrier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/FK;->getCarrier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    :goto_0
    invoke-static {}, Lc8/FK;->isProxy()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    const-string/jumbo v3, "Proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/FK;->getProxyType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {}, Lc8/FK;->getWifiProxy()Landroid/util/Pair;

    move-result-object v1

    .line 193
    .local v1, "proxyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_1

    .line 194
    const-string/jumbo v3, "ProxyHost: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v3, "ProxyPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .end local v1    # "proxyInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    const-string/jumbo v3, "*********************************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v3, "awcn.NetworkStatusHelper"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-void

    .line 186
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string/jumbo v3, "BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/FK;->getWifiBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    const-string/jumbo v3, "SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/FK;->getWifiSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 202
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static removeStatusChangeListener(Lc8/EK;)V
    .locals 1
    .param p0, "listener"    # Lc8/EK;

    .prologue
    .line 71
    sget-object v0, Lc8/FK;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public static declared-synchronized startListener(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-class v1, Lc8/FK;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lc8/IK;->context:Landroid/content/Context;

    .line 59
    invoke-static {}, Lc8/IK;->registerNetworkReceiver()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
