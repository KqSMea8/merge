.class public Lc8/ttf;
.super Ljava/lang/Object;
.source "OrangeConfigLocal.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrangeConfigLocal"

.field private static volatile isMainProcess:Z

.field private static mInstance:Lc8/ttf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ttf;->isMainProcess:Z

    .line 20
    new-instance v0, Lc8/ttf;

    invoke-direct {v0}, Lc8/ttf;-><init>()V

    sput-object v0, Lc8/ttf;->mInstance:Lc8/ttf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 17
    sput-boolean p0, Lc8/ttf;->isMainProcess:Z

    return p0
.end method

.method public static getInstance()Lc8/ttf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    sget-object v0, Lc8/ttf;->mInstance:Lc8/ttf;

    return-object v0
.end method


# virtual methods
.method public enterBackground()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.enterBackground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public enterForeground()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.enterForeground"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultVal"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    sget-boolean v0, Lc8/ttf;->isMainProcess:Z

    if-nez v0, :cond_0

    .line 61
    .end local p3    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p3

    .restart local p3    # "defaultVal":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/Jsf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    sget-boolean v0, Lc8/ttf;->isMainProcess:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Jsf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, v0}, Lc8/ttf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v0}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/ttf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "appversion"    # Ljava/lang/String;
    .param p4, "env"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    new-instance v0, Lc8/stf;

    invoke-direct {v0, p0, p1}, Lc8/stf;-><init>(Lc8/ttf;Landroid/content/Context;)V

    invoke-static {v0}, Lc8/btf;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method

.method public registerListener([Ljava/lang/String;Lc8/rtf;)V
    .locals 2
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/rtf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    new-instance v0, Lc8/ztf;

    invoke-direct {v0, p2}, Lc8/ztf;-><init>(Lc8/rtf;)V

    .line 84
    .local v0, "aidllistener":Lc8/ztf;
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lc8/Jsf;->registerListener([Ljava/lang/String;Lc8/Dtf;)V

    .line 86
    .end local v0    # "aidllistener":Lc8/ztf;
    :cond_0
    return-void
.end method

.method public registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V
    .locals 2
    .param p1, "namespaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lcom/taobao/orange/OrangeConfigListenerV1;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    if-eqz p2, :cond_0

    .line 75
    new-instance v0, Lc8/Atf;

    invoke-direct {v0, p2}, Lc8/Atf;-><init>(Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 76
    .local v0, "aidllistener":Lc8/Atf;
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lc8/Jsf;->registerListenerV1([Ljava/lang/String;Lc8/Gtf;)V

    .line 78
    .end local v0    # "aidllistener":Lc8/Atf;
    :cond_0
    return-void
.end method

.method public setAppSecret(Ljava/lang/String;)V
    .locals 5
    .param p1, "appSecret"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.setAppSecret"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public setHosts(Ljava/util/List;)V
    .locals 5
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

    .prologue
    .line 115
    .local p1, "hosts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.setHosts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public setIndexUpdateMode(I)V
    .locals 5
    .param p1, "indexUpdateMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.setIndexUpdateMode"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    const-string/jumbo v0, "OrangeConfigLocal"

    const-string/jumbo v1, "OrangeConfigLocal.setUserId"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "@Deprecated please use OrangeConfig"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method public unregisterListener([Ljava/lang/String;)V
    .locals 1
    .param p1, "namespaces"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Lc8/Jsf;->getInstance()Lc8/Jsf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Jsf;->unregisterListeners([Ljava/lang/String;)V

    .line 91
    return-void
.end method
