.class public Lc8/yvk;
.super Landroid/content/BroadcastReceiver;
.source "FreeFlowNetWorkStateReceiver.java"


# instance fields
.field private isFromWifiTo4G:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/yvk;->isFromWifiTo4G:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 26
    const-string/jumbo v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 27
    .local v0, "connMgr":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 29
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_3

    .line 33
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 35
    .local v5, "networks":[Landroid/net/Network;
    const/4 v3, 0x0

    .line 36
    .local v3, "mobileConnected":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 38
    aget-object v7, v5, v2

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 39
    .local v4, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-nez v7, :cond_2

    .line 40
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 44
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_0
    if-eqz v3, :cond_1

    .line 46
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v7

    const-string/jumbo v8, "3"

    invoke-virtual {v7, v8}, Lc8/Dvk;->update(Ljava/lang/String;)Z

    .line 71
    .end local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .end local v2    # "i":I
    .end local v3    # "mobileConnected":Z
    .end local v5    # "networks":[Landroid/net/Network;
    :cond_1
    :goto_1
    return-void

    .line 36
    .restart local v0    # "connMgr":Landroid/net/ConnectivityManager;
    .restart local v2    # "i":I
    .restart local v3    # "mobileConnected":Z
    .restart local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v5    # "networks":[Landroid/net/Network;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    .end local v3    # "mobileConnected":Z
    .end local v4    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "networks":[Landroid/net/Network;
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 56
    .local v6, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 57
    .local v1, "dataNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 60
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v7

    const-string/jumbo v8, "3"

    invoke-virtual {v7, v8}, Lc8/Dvk;->update(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "dataNetworkInfo":Landroid/net/NetworkInfo;
    .end local v6    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
