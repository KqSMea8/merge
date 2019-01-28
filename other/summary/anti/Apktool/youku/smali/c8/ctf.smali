.class public abstract Lc8/ctf;
.super Ljava/lang/Object;
.source "OrangeConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/ctf;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lc8/qtf;->mInstance:Lc8/qtf;

    return-object v0
.end method


# virtual methods
.method public abstract enterBackground()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract enterForeground()V
.end method

.method public abstract getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, v0, v0}, Lc8/ctf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public abstract init(Landroid/content/Context;Lc8/Nsf;)V
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/ctf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "env"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$SERVER;->ordinal()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ctf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 29
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "env"    # I
    .param p5, "serverType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lc8/ctf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "env"    # I
    .param p5, "serverType"    # I
    .param p6, "onlineHost"    # Ljava/lang/String;
    .param p7, "onlineAckHost"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 38
    new-instance v1, Lc8/Msf;

    invoke-direct {v1}, Lc8/Msf;-><init>()V

    .line 39
    invoke-virtual {v1, p2}, Lc8/Msf;->setAppKey(Ljava/lang/String;)Lc8/Msf;

    move-result-object v1

    .line 40
    invoke-virtual {v1, p3}, Lc8/Msf;->setAppVersion(Ljava/lang/String;)Lc8/Msf;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p4}, Lc8/Msf;->setEnv(I)Lc8/Msf;

    move-result-object v1

    .line 42
    invoke-virtual {v1, p5}, Lc8/Msf;->setServerType(I)Lc8/Msf;

    move-result-object v1

    sget-object v2, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 43
    invoke-virtual {v2}, Lcom/taobao/orange/OConstant$UPDMODE;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lc8/Msf;->setIndexUpdateMode(I)Lc8/Msf;

    move-result-object v1

    .line 44
    invoke-virtual {v1, p6}, Lc8/Msf;->setOnlineHost(Ljava/lang/String;)Lc8/Msf;

    move-result-object v1

    .line 45
    invoke-virtual {v1, p7}, Lc8/Msf;->setOnlineAckHost(Ljava/lang/String;)Lc8/Msf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Msf;->build()Lc8/Nsf;

    move-result-object v0

    .line 46
    .local v0, "config":Lc8/Nsf;
    invoke-virtual {p0, p1, v0}, Lc8/ctf;->init(Landroid/content/Context;Lc8/Nsf;)V

    .line 47
    return-void
.end method

.method public abstract registerListener([Ljava/lang/String;Lc8/rtf;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
.end method

.method public abstract setAppSecret(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setHosts(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setIndexUpdateMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract unregisterListener([Ljava/lang/String;)V
.end method

.method public abstract unregisterListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
.end method
