.class public Lc8/Wib;
.super Ljava/lang/Object;
.source "MtopRpcServiceImpl.java"

# interfaces
.implements Lc8/thb;


# instance fields
.field mtopInstance:Lc8/AOp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-boolean v0, Lc8/zgb;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {v1}, Lc8/BMp;->setTLogEnabled(Z)V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/BMp;->setPrintLog(Z)V

    .line 38
    :cond_0
    const-string/jumbo v0, "OPEN"

    invoke-static {v0, v1, v1}, Lc8/IOp;->setAppKeyIndex(Ljava/lang/String;II)V

    .line 40
    const-string/jumbo v0, "OPEN"

    invoke-static {}, Lc8/Shb;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/IOp;->setAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v0, "OPEN"

    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    iput-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    .line 42
    invoke-static {}, Lc8/Bgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->TEST:Lcom/ali/auth/third/core/config/Environment;

    if-ne v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    .line 49
    :goto_0
    iget-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    new-instance v1, Lc8/Uib;

    invoke-direct {v1}, Lc8/Uib;-><init>()V

    invoke-static {v0, v1}, Lc8/nNf;->setLoginImpl(Lc8/AOp;Lc8/jNf;)V

    .line 50
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lc8/Bgb;->getEnvironment()Lcom/ali/auth/third/core/config/Environment;

    move-result-object v0

    sget-object v1, Lcom/ali/auth/third/core/config/Environment;->PRE:Lcom/ali/auth/third/core/config/Environment;

    if-ne v0, v1, :cond_2

    .line 45
    iget-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0, v1}, Lc8/AOp;->switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)Lc8/AOp;

    goto :goto_0
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lc8/Kgb;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public invoke(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;
    .locals 1
    .param p1, "rpcRequest"    # Lc8/Xgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lc8/Zgb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lc8/Sib;->getInstance()Lc8/Sib;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/Sib;->post(Lc8/Xgb;Ljava/lang/Class;)Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method

.method public invoke(Lc8/Xgb;)Ljava/lang/String;
    .locals 1
    .param p1, "rpcRequest"    # Lc8/Xgb;

    .prologue
    .line 54
    invoke-static {}, Lc8/Sib;->getInstance()Lc8/Sib;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Sib;->post(Lc8/Xgb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    invoke-virtual {v0}, Lc8/AOp;->logout()Lc8/AOp;

    .line 81
    return-void
.end method

.method public registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/Wib;->mtopInstance:Lc8/AOp;

    invoke-virtual {v0, p1, p2}, Lc8/AOp;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;

    .line 71
    return-void
.end method

.method public remoteBusiness(Lc8/Xgb;Ljava/lang/Class;Lc8/Ygb;)V
    .locals 2
    .param p1, "request"    # Lc8/Xgb;
    .param p3, "rpcRequestCallback"    # Lc8/Ygb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/Zgb",
            "<*>;>(",
            "Lc8/Xgb;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lc8/Ygb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/sgb;->ttid:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/HMf;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lc8/Sib;->getInstance()Lc8/Sib;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lc8/Sib;->remoteBusiness(Lc8/Xgb;Ljava/lang/Class;Lc8/Ygb;)V

    .line 67
    return-void
.end method
