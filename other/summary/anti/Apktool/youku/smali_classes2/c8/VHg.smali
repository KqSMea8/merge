.class public Lc8/VHg;
.super Landroid/content/BroadcastReceiver;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WHg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionChangeReceiver"
.end annotation


# instance fields
.field private mIsConnectionChangeReceiverRegister:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1765
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/VHg;->mIsConnectionChangeReceiverRegister:Z

    return-void
.end method

.method synthetic constructor <init>(Lc8/UHg;)V
    .locals 0
    .param p1, "x0"    # Lc8/UHg;

    .prologue
    .line 1765
    invoke-direct {p0}, Lc8/VHg;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lc8/VHg;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/VHg;
    .param p1, "x1"    # Z

    .prologue
    .line 1765
    invoke-direct {p0, p1}, Lc8/VHg;->setConnectionChangeReceiverRegister(Z)V

    return-void
.end method

.method static synthetic access$200(Lc8/VHg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/VHg;

    .prologue
    .line 1765
    invoke-direct {p0}, Lc8/VHg;->isConnectionChangeReceiverRegister()Z

    move-result v0

    return v0
.end method

.method private isConnectionChangeReceiverRegister()Z
    .locals 1

    .prologue
    .line 1775
    iget-boolean v0, p0, Lc8/VHg;->mIsConnectionChangeReceiverRegister:Z

    return v0
.end method

.method private setConnectionChangeReceiverRegister(Z)V
    .locals 0
    .param p1, "isConnectionChangeReceiverRegister"    # Z

    .prologue
    .line 1785
    iput-boolean p1, p0, Lc8/VHg;->mIsConnectionChangeReceiverRegister:Z

    .line 1786
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1791
    :try_start_0
    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p1, v3}, Lc8/WHg;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1832
    :cond_0
    :goto_0
    return-void

    .line 1794
    :cond_1
    const-string/jumbo v3, "connectivity"

    .line 1795
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1796
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_2

    .line 1797
    const-string/jumbo v3, "connectivityManager\u5bf9\u8c61\u4e3a\u7a7a"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1828
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "ConnectionChangeReceiver.onReceive exception"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1800
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    const/4 v3, 0x0

    .line 1801
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1802
    .local v1, "mobNetInfo":Landroid/net/NetworkInfo;
    const/4 v3, 0x1

    .line 1803
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1805
    .local v2, "wifiNetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_3

    .line 1806
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8fd0\u8425\u5546\u7f51\u7edcmobNetInfo.isConnected():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1808
    :cond_3
    if-eqz v2, :cond_4

    .line 1809
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wifi\u7f51\u7edcwifiNetInfo.isConnected():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1812
    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 1813
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1814
    const-string/jumbo v3, "\u7f51\u7edc\u65e0\u8fde\u63a5"

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1830
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mobNetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "wifiNetInfo":Landroid/net/NetworkInfo;
    :catch_1
    move-exception v3

    const-string/jumbo v3, "ConnectionChangeReceiver.onReceive error"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1816
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "mobNetInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "wifiNetInfo":Landroid/net/NetworkInfo;
    :cond_5
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    if-eqz v2, :cond_0

    .line 1817
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1818
    :cond_7
    const-string/jumbo v3, "\u7f51\u7edc\u53ef\u7528\u65f6\uff0c\u83b7\u53d6\u5730\u7406\u4f4d\u7f6e\u4fe1\u606f"

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1821
    invoke-static {p1}, Lc8/WHg;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/NHg;->network:Ljava/lang/String;

    .line 1822
    invoke-static {p1}, Lc8/WHg;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc8/NHg;->operator:Ljava/lang/String;

    .line 1823
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device\'s network:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/NHg;->network:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1824
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Device\'s operator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/NHg;->operator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
