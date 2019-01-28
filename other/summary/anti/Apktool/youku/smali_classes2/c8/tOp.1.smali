.class public Lc8/tOp;
.super Ljava/lang/Object;
.source "ProductMtopInitTask.java"

# interfaces
.implements Lc8/pOp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ProductMtopInitTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCoreTask(Lc8/kOp;)V
    .locals 7
    .param p1, "mtopConfig"    # Lc8/kOp;

    .prologue
    .line 32
    new-instance v4, Lc8/lMp;

    invoke-direct {v4}, Lc8/lMp;-><init>()V

    invoke-static {v4}, Lc8/BMp;->setLogAdapter(Lc8/kMp;)V

    .line 34
    iget-object v1, p1, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 36
    .local v1, "instanceId":Ljava/lang/String;
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    const-string/jumbo v4, "mtopsdk.ProductMtopInitTask"

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

    .line 41
    :cond_0
    :try_start_0
    iget-object v2, p1, Lc8/kOp;->mtopInstance:Lc8/AOp;

    .line 42
    .local v2, "mtopInstance":Lc8/AOp;
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 43
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 44
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 45
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lc8/hOp;->setMtopFeatureFlag(Lc8/AOp;IZ)V

    .line 47
    iget-object v4, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/rQp;->init(Landroid/content/Context;)V

    .line 48
    const-string/jumbo v4, "ttid"

    iget-object v5, p1, Lc8/kOp;->ttid:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v3, Lc8/mQp;

    invoke-direct {v3}, Lc8/mQp;-><init>()V

    .line 50
    .local v3, "sign":Lc8/gQp;
    invoke-interface {v3, p1}, Lc8/gQp;->init(Lc8/kOp;)V

    .line 52
    sget-object v4, Lmtopsdk/mtop/domain/EntranceEnum;->GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v4, p1, Lc8/kOp;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 53
    iput-object v3, p1, Lc8/kOp;->sign:Lc8/gQp;

    .line 54
    new-instance v4, Lc8/fQp;

    iget v5, p1, Lc8/kOp;->appKeyIndex:I

    iget-object v6, p1, Lc8/kOp;->authCode:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lc8/fQp;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lc8/gQp;->getAppKey(Lc8/fQp;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lc8/kOp;->appKey:Ljava/lang/String;

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iput v4, p1, Lc8/kOp;->processId:I

    .line 56
    new-instance v4, Lc8/hNp;

    invoke-direct {v4}, Lc8/hNp;-><init>()V

    iput-object v4, p1, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 57
    iget-object v4, p1, Lc8/kOp;->antiAttackHandler:Lc8/kNp;

    if-nez v4, :cond_1

    .line 58
    new-instance v4, Lc8/nNp;

    iget-object v5, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lc8/nNp;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lc8/kOp;->antiAttackHandler:Lc8/kNp;

    .line 60
    :cond_1
    iget-object v4, p1, Lc8/kOp;->callFactory:Lc8/wPp;

    if-nez v4, :cond_2

    .line 61
    new-instance v4, Lc8/MPp;

    iget-object v5, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lc8/MPp;-><init>(Landroid/content/Context;)V

    iput-object v4, p1, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 63
    :cond_2
    iget-object v4, p1, Lc8/kOp;->uploadStats:Lc8/aPp;

    if-nez v4, :cond_3

    .line 64
    new-instance v4, Lc8/bPp;

    invoke-direct {v4}, Lc8/bPp;-><init>()V

    iput-object v4, p1, Lc8/kOp;->uploadStats:Lc8/aPp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "mtopInstance":Lc8/AOp;
    .end local v3    # "sign":Lc8/gQp;
    :cond_3
    :goto_0
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 71
    const-string/jumbo v4, "mtopsdk.ProductMtopInitTask"

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

    .line 74
    :cond_4
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "mtopsdk.ProductMtopInitTask"

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
    .line 78
    iget-object v1, p1, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 79
    .local v1, "instanceId":Ljava/lang/String;
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string/jumbo v2, "mtopsdk.ProductMtopInitTask"

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

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v2

    iget-object v3, p1, Lc8/kOp;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lc8/oOp;->initConfig(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    const-string/jumbo v2, "mtopsdk.ProductMtopInitTask"

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

    .line 91
    :cond_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.ProductMtopInitTask"

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
