.class public Lc8/qOp;
.super Ljava/lang/Object;
.source "InnerMtopInitTask.java"

# interfaces
.implements Lc8/pOp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerMtopInitTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCoreTask(Lc8/kOp;)V
    .locals 7
    .param p1, "mtopConfig"    # Lc8/kOp;

    .prologue
    .line 34
    new-instance v4, Lc8/lMp;

    invoke-direct {v4}, Lc8/lMp;-><init>()V

    invoke-static {v4}, Lc8/BMp;->setLogAdapter(Lc8/kMp;)V

    .line 36
    iget-object v1, p1, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 38
    .local v1, "instanceId":Ljava/lang/String;
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    const-string/jumbo v4, "mtopsdk.InnerMtopInitTask"

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

    .line 43
    :cond_0
    :try_start_0
    iget-object v2, p1, Lc8/kOp;->mtopInstance:Lc8/AOp;

    .line 44
    .local v2, "mtopInstance":Lc8/AOp;
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 45
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 46
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 47
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 50
    iget-object v4, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/rQp;->init(Landroid/content/Context;)V

    .line 51
    const-string/jumbo v4, "ttid"

    iget-object v5, p1, Lc8/kOp;->ttid:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v3, Lc8/jQp;

    invoke-direct {v3}, Lc8/jQp;-><init>()V

    .line 53
    .local v3, "sign":Lc8/gQp;
    invoke-interface {v3, p1}, Lc8/gQp;->init(Lc8/kOp;)V

    .line 55
    sget-object v4, Lmtopsdk/mtop/domain/EntranceEnum;->GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v4, p1, Lc8/kOp;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 56
    iput-object v3, p1, Lc8/kOp;->sign:Lc8/gQp;

    .line 57
    new-instance v4, Lc8/fQp;

    iget v5, p1, Lc8/kOp;->appKeyIndex:I

    iget-object v6, p1, Lc8/kOp;->authCode:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lc8/fQp;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lc8/gQp;->getAppKey(Lc8/fQp;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lc8/kOp;->appKey:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, p1, Lc8/kOp;->processId:I

    .line 59
    new-instance v4, Lc8/fNp;

    invoke-direct {v4}, Lc8/fNp;-><init>()V

    iput-object v4, p1, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 60
    new-instance v4, Lc8/fPp;

    invoke-direct {v4}, Lc8/fPp;-><init>()V

    iput-object v4, p1, Lc8/kOp;->unitService:Lc8/cPp;

    .line 61
    iget-object v4, p1, Lc8/kOp;->antiAttackHandler:Lc8/kNp;

    if-nez v4, :cond_1

    .line 62
    new-instance v4, Lc8/nNp;

    iget-object v5, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lc8/nNp;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lc8/kOp;->antiAttackHandler:Lc8/kNp;

    .line 64
    :cond_1
    iget-object v4, p1, Lc8/kOp;->callFactory:Lc8/wPp;

    if-nez v4, :cond_2

    .line 65
    new-instance v4, Lc8/MPp;

    iget-object v5, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lc8/MPp;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 67
    :cond_2
    iget-object v4, p1, Lc8/kOp;->uploadStats:Lc8/aPp;

    if-nez v4, :cond_3

    .line 68
    new-instance v4, Lc8/bPp;

    invoke-direct {v4}, Lc8/bPp;-><init>()V

    iput-object v4, p1, Lc8/kOp;->uploadStats:Lc8/aPp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "mtopInstance":Lc8/AOp;
    .end local v3    # "sign":Lc8/gQp;
    :cond_3
    :goto_0
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    const-string/jumbo v4, "mtopsdk.InnerMtopInitTask"

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

    .line 78
    :cond_4
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.InnerMtopInitTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [executeInitCoreTask]MtopSDK initcore error---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeExtraTask(Lc8/kOp;)V
    .locals 5
    .param p1, "mtopConfig"    # Lc8/kOp;

    .prologue
    .line 83
    iget-object v1, p1, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 84
    .local v1, "instanceId":Ljava/lang/String;
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string/jumbo v2, "mtopsdk.InnerMtopInitTask"

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

    .line 89
    :cond_0
    :try_start_0
    iget-object v2, p1, Lc8/kOp;->unitService:Lc8/cPp;

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, p1, Lc8/kOp;->unitService:Lc8/cPp;

    iget-object v3, p1, Lc8/kOp;->ttid:Ljava/lang/String;

    invoke-interface {v2, v3}, Lc8/cPp;->setTtid(Ljava/lang/String;)V

    .line 91
    iget-object v2, p1, Lc8/kOp;->unitService:Lc8/cPp;

    iget-object v3, p1, Lc8/kOp;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lc8/cPp;->loadApiUnitInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :cond_1
    iget-boolean v2, p1, Lc8/kOp;->enableNewDeviceId:Z

    if-eqz v2, :cond_2

    .line 95
    invoke-static {}, Lc8/YNp;->getInstance()Lc8/YNp;

    move-result-object v2

    iget-object v3, p1, Lc8/kOp;->context:Landroid/content/Context;

    iget-object v4, p1, Lc8/kOp;->appKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lc8/YNp;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 98
    :cond_2
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v2

    iget-object v3, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc8/oOp;->initConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    const-string/jumbo v2, "mtopsdk.InnerMtopInitTask"

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

    .line 105
    :cond_3
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.InnerMtopInitTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [executeInitExtraTask] execute MtopSDK initExtraTask error.---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
