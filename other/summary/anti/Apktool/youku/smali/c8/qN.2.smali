.class public Lc8/qN;
.super Ljava/lang/Object;
.source "NetworkConfigCenter.java"


# static fields
.field private static volatile cacheFlag:J

.field private static volatile iRemoteConfig:Lc8/pN;

.field private static volatile isAllowHttpIpRetry:Z

.field private static volatile isHttpCacheEnable:Z

.field private static volatile isHttpSessionEnable:Z

.field private static volatile isRemoteNetworkServiceEnable:Z

.field private static volatile isSSLEnabled:Z

.field private static volatile isSpdyEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 18
    sput-boolean v0, Lc8/qN;->isSSLEnabled:Z

    .line 19
    sput-boolean v0, Lc8/qN;->isSpdyEnabled:Z

    .line 20
    sput-boolean v0, Lc8/qN;->isRemoteNetworkServiceEnable:Z

    .line 21
    sput-boolean v0, Lc8/qN;->isHttpSessionEnable:Z

    .line 22
    sput-boolean v0, Lc8/qN;->isHttpCacheEnable:Z

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lc8/qN;->isAllowHttpIpRetry:Z

    .line 24
    const-wide/16 v0, 0x0

    sput-wide v0, Lc8/qN;->cacheFlag:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 30
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "Cache.Flag"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lc8/qN;->cacheFlag:J

    .line 31
    return-void
.end method

.method public static isAllowHttpIpRetry()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lc8/qN;->isHttpSessionEnable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/qN;->isAllowHttpIpRetry:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHttpCacheEnable()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lc8/qN;->isHttpCacheEnable:Z

    return v0
.end method

.method public static isHttpSessionEnable()Z
    .locals 1

    .prologue
    .line 75
    sget-boolean v0, Lc8/qN;->isHttpSessionEnable:Z

    return v0
.end method

.method public static isRemoteNetworkServiceEnable()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Lc8/qN;->isRemoteNetworkServiceEnable:Z

    return v0
.end method

.method public static isSSLEnabled()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lc8/qN;->isSSLEnabled:Z

    return v0
.end method

.method public static isSpdyEnabled()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lc8/qN;->isSpdyEnabled:Z

    return v0
.end method

.method public static setAllowHttpIpRetry(Z)V
    .locals 0
    .param p0, "b"    # Z

    .prologue
    .line 87
    sput-boolean p0, Lc8/qN;->isAllowHttpIpRetry:Z

    .line 88
    return-void
.end method

.method public static setCacheFlag(J)V
    .locals 8
    .param p0, "flag"    # J

    .prologue
    .line 99
    sget-wide v2, Lc8/qN;->cacheFlag:J

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v1, "anet.NetworkConfigCenter"

    const-string/jumbo v2, "set cache flag"

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "old"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-wide v6, Lc8/qN;->cacheFlag:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "new"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    sput-wide p0, Lc8/qN;->cacheFlag:J

    .line 102
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "Cache.Flag"

    sget-wide v2, Lc8/qN;->cacheFlag:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    invoke-static {}, Lc8/nN;->clearAllCache()V

    .line 107
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static setHttpCacheEnable(Z)V
    .locals 0
    .param p0, "isEnable"    # Z

    .prologue
    .line 95
    sput-boolean p0, Lc8/qN;->isHttpCacheEnable:Z

    .line 96
    return-void
.end method

.method public static setHttpsValidationEnabled(Z)V
    .locals 1
    .param p0, "isEnable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_0

    .line 49
    sget-object v0, Lc8/WL;->ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Lc8/WL;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 50
    sget-object v0, Lc8/WL;->TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0}, Lc8/WL;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {v0}, Lc8/WL;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 53
    invoke-static {v0}, Lc8/WL;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_0
.end method

.method public static setRemoteConfig(Lc8/pN;)V
    .locals 1
    .param p0, "iRemoteConfig"    # Lc8/pN;

    .prologue
    .line 65
    sget-object v0, Lc8/qN;->iRemoteConfig:Lc8/pN;

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lc8/qN;->iRemoteConfig:Lc8/pN;

    invoke-interface {v0}, Lc8/pN;->unRegister()V

    .line 68
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    invoke-interface {p0}, Lc8/pN;->register()V

    .line 71
    :cond_1
    sput-object p0, Lc8/qN;->iRemoteConfig:Lc8/pN;

    .line 72
    return-void
.end method

.method public static setSSLEnabled(Z)V
    .locals 0
    .param p0, "sslEnabled"    # Z

    .prologue
    .line 34
    sput-boolean p0, Lc8/qN;->isSSLEnabled:Z

    .line 35
    return-void
.end method

.method public static setSpdyEnabled(Z)V
    .locals 0
    .param p0, "spdyEnabled"    # Z

    .prologue
    .line 41
    sput-boolean p0, Lc8/qN;->isSpdyEnabled:Z

    .line 42
    return-void
.end method
