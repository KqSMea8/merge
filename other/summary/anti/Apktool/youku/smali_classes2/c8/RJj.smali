.class public Lc8/RJj;
.super Ljava/lang/Object;
.source "YKNetworkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/network/config/YKNetworkConfig$CallType;
    }
.end annotation


# static fields
.field private static defaultCallType:Lcom/youku/network/config/YKNetworkConfig$CallType;

.field private static volatile isCheckProcess:Z

.field private static isMainProcess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    sput-object v0, Lc8/RJj;->defaultCallType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lc8/RJj;->isCheckProcess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getAccessableCallType(Ljava/lang/String;)Lcom/youku/network/config/YKNetworkConfig$CallType;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isMainProcess---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lc8/RJj;->isMainProcess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "--url--:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    invoke-static {}, Lc8/RJj;->getIsMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    .line 75
    :goto_0
    return-object v0

    .line 63
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lc8/RJj;->defaultCallType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p0}, Lc8/RJj;->isSetPortNot80(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->OKHTTP:Lcom/youku/network/config/YKNetworkConfig$CallType;

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0}, Lc8/RJj;->isInWhiteList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    sget-object v0, Lcom/youku/network/config/YKNetworkConfig$CallType;->NETWORKSDK:Lcom/youku/network/config/YKNetworkConfig$CallType;

    goto :goto_0

    .line 75
    :cond_3
    sget-object v0, Lc8/RJj;->defaultCallType:Lcom/youku/network/config/YKNetworkConfig$CallType;

    goto :goto_0
.end method

.method private static getIsMainProcess()Z
    .locals 2

    .prologue
    .line 42
    sget-boolean v0, Lc8/RJj;->isCheckProcess:Z

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lc8/RJj;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-boolean v0, Lc8/RJj;->isCheckProcess:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lc8/tSh;->isMainProcess()Z

    move-result v0

    sput-boolean v0, Lc8/RJj;->isMainProcess:Z

    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lc8/RJj;->isCheckProcess:Z

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-boolean v0, Lc8/RJj;->isMainProcess:Z

    return v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 81
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/tSh;->canUseNetworkSDK(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 87
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 87
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSetPortNot80(Ljava/lang/String;)Z
    .locals 5
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 93
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    .local v1, "port":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    const/4 v3, 0x1

    .line 100
    .end local v1    # "port":I
    .end local v2    # "url":Ljava/net/URL;
    :cond_0
    :goto_0
    return v3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method
