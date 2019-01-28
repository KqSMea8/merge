.class public Lc8/sOp;
.super Ljava/lang/Object;
.source "OpenMtopInitTask.java"

# interfaces
.implements Lc8/pOp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.OpenMtopInitTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCoreTask(Lc8/kOp;)V
    .locals 7
    .param p1, "mtopConfig"    # Lc8/kOp;

    .prologue
    .line 30
    iget-object v1, p1, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 32
    .local v1, "instanceId":Ljava/lang/String;
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    const-string/jumbo v4, "mtopsdk.OpenMtopInitTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [executeInitCoreTask]MtopSDK initcore start. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    :try_start_0
    iget-object v2, p1, Lc8/kOp;->mtopInstance:Lc8/AOp;

    .line 38
    .local v2, "mtopInstance":Lc8/AOp;
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 40
    iget-object v4, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/rQp;->init(Landroid/content/Context;)V

    .line 41
    const-string/jumbo v4, "ttid"

    iget-object v5, p1, Lc8/kOp;->ttid:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v3, Lc8/kQp;

    invoke-direct {v3}, Lc8/kQp;-><init>()V

    .line 43
    .local v3, "sign":Lc8/gQp;
    invoke-interface {v3, p1}, Lc8/gQp;->init(Lc8/kOp;)V

    .line 45
    sget-object v4, Lmtopsdk/mtop/domain/EntranceEnum;->GW_OPEN:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v4, p1, Lc8/kOp;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 46
    iput-object v3, p1, Lc8/kOp;->sign:Lc8/gQp;

    .line 47
    new-instance v4, Lc8/fQp;

    iget v5, p1, Lc8/kOp;->appKeyIndex:I

    iget-object v6, p1, Lc8/kOp;->authCode:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lc8/fQp;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lc8/gQp;->getAppKey(Lc8/fQp;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lc8/kOp;->appKey:Ljava/lang/String;

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, p1, Lc8/kOp;->processId:I

    .line 49
    new-instance v4, Lc8/gNp;

    invoke-direct {v4}, Lc8/gNp;-><init>()V

    iput-object v4, p1, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 53
    iget-object v4, p1, Lc8/kOp;->callFactory:Lc8/wPp;

    if-nez v4, :cond_1

    .line 54
    new-instance v4, Lc8/PPp;

    iget-object v5, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-static {}, Lc8/mPp;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lc8/PPp;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    iput-object v4, p1, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 56
    :cond_1
    iget-object v4, p1, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v5, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    const-string/jumbo v6, "acs4baichuan.m.taobao.com"

    invoke-virtual {v4, v5, v6}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 57
    iget-object v4, p1, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v5, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    const-string/jumbo v6, "api.wapa.taobao.com"

    invoke-virtual {v4, v5, v6}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 58
    iget-object v4, p1, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v5, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    const-string/jumbo v6, "api.waptest.taobao.com"

    invoke-virtual {v4, v5, v6}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 59
    iget-object v4, p1, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v5, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    const-string/jumbo v6, "api.waptest2nd.taobao.com"

    invoke-virtual {v4, v5, v6}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v2    # "mtopInstance":Lc8/AOp;
    .end local v3    # "sign":Lc8/gQp;
    :goto_0
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 65
    const-string/jumbo v4, "mtopsdk.OpenMtopInitTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [executeInitCoreTask]MtopSDK initcore end"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_2
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.OpenMtopInitTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [executeInitCoreTask]MtopSDK initcore error."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public executeExtraTask(Lc8/kOp;)V
    .locals 5
    .param p1, "mtopConfig"    # Lc8/kOp;

    .prologue
    .line 71
    iget-object v1, p1, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 72
    .local v1, "instanceId":Ljava/lang/String;
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string/jumbo v2, "mtopsdk.OpenMtopInitTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [executeInitExtraTask]MtopSDK initextra start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v2

    iget-object v3, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc8/oOp;->initConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const-string/jumbo v2, "mtopsdk.OpenMtopInitTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [executeInitExtraTask]MtopSDK initextra end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_1
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.OpenMtopInitTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [executeInitExtraTask] execute MtopSDK initExtraTask error."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
