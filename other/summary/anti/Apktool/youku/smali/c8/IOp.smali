.class public final Lc8/IOp;
.super Ljava/lang/Object;
.source "MtopSetting.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopSetting"

.field protected static final mtopConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/kOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/IOp;->mtopConfigMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lc8/kOp;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    return-object v0
.end method

.method private static getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;
    .locals 8
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p0, :cond_2

    move-object v1, p0

    .line 48
    .local v1, "id":Ljava/lang/String;
    :goto_0
    sget-object v5, Lc8/AOp;->instanceMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/AOp;

    .line 49
    .local v4, "mtopInstance":Lc8/AOp;
    if-nez v4, :cond_4

    .line 50
    const-class v6, Lc8/AOp;

    monitor-enter v6

    .line 51
    :try_start_0
    sget-object v5, Lc8/AOp;->instanceMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lc8/AOp;

    move-object v4, v0

    .line 52
    if-nez v4, :cond_3

    .line 53
    sget-object v5, Lc8/IOp;->mtopConfigMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/kOp;

    .line 54
    .local v2, "mtopConfig":Lc8/kOp;
    if-nez v2, :cond_1

    .line 55
    const-class v7, Lc8/IOp;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    sget-object v5, Lc8/IOp;->mtopConfigMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lc8/kOp;

    move-object v2, v0

    .line 57
    if-nez v2, :cond_0

    .line 58
    new-instance v3, Lc8/kOp;

    invoke-direct {v3, v1}, Lc8/kOp;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v2    # "mtopConfig":Lc8/kOp;
    .local v3, "mtopConfig":Lc8/kOp;
    :try_start_2
    sget-object v5, Lc8/IOp;->mtopConfigMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v3

    .line 61
    .end local v3    # "mtopConfig":Lc8/kOp;
    .restart local v2    # "mtopConfig":Lc8/kOp;
    :cond_0
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    :cond_1
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 67
    .end local v2    # "mtopConfig":Lc8/kOp;
    :goto_1
    return-object v2

    .line 46
    .end local v1    # "id":Ljava/lang/String;
    .end local v4    # "mtopInstance":Lc8/AOp;
    :cond_2
    const-string/jumbo v1, "INNER"

    goto :goto_0

    .line 61
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v2    # "mtopConfig":Lc8/kOp;
    .restart local v4    # "mtopInstance":Lc8/AOp;
    :catchall_0
    move-exception v5

    :goto_2
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 65
    .end local v2    # "mtopConfig":Lc8/kOp;
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    :cond_3
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 67
    :cond_4
    invoke-virtual {v4}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v2

    goto :goto_1

    .line 61
    .restart local v3    # "mtopConfig":Lc8/kOp;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "mtopConfig":Lc8/kOp;
    .restart local v2    # "mtopConfig":Lc8/kOp;
    goto :goto_2
.end method

.method public static removeParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "mtopParamType"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 418
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 419
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 421
    .local v0, "mtopConfig":Lc8/kOp;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[removeParam] remove Param succeed.mtopParamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 437
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_2
    :goto_1
    return-void

    .line 424
    .restart local v0    # "mtopConfig":Lc8/kOp;
    :sswitch_0
    const-string/jumbo v2, "HEADER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "QUERY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "ABTEST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 426
    :pswitch_0
    iget-object v1, v0, Lc8/kOp;->mtopGlobalHeaders:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 429
    :pswitch_1
    iget-object v1, v0, Lc8/kOp;->mtopGlobalQuerys:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 432
    :pswitch_2
    iget-object v1, v0, Lc8/kOp;->mtopGlobalABTestParams:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 424
    :sswitch_data_0
    .sparse-switch
        0x49d20a8 -> :sswitch_1
        0x72b44c33 -> :sswitch_2
        0x7ec7d68d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setAntiAttackHandler(Ljava/lang/String;Lc8/kNp;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "antiAttackHandler"    # Lc8/kNp;

    .prologue
    .line 235
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 236
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->antiAttackHandler:Lc8/kNp;

    .line 237
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setAntiAttackHandler] set antiAttackHandler succeed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method public static setAppKeyIndex(II)V
    .locals 1
    .param p0, "onlineIndex"    # I
    .param p1, "dailyIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc8/IOp;->setAppKeyIndex(Ljava/lang/String;II)V

    .line 96
    return-void
.end method

.method public static setAppKeyIndex(Ljava/lang/String;II)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "onlineIndex"    # I
    .param p2, "dailyIndex"    # I

    .prologue
    .line 80
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 81
    .local v0, "mtopConfig":Lc8/kOp;
    iput p1, v0, Lc8/kOp;->onlineAppKeyIndex:I

    .line 82
    iput p2, v0, Lc8/kOp;->dailyAppkeyIndex:I

    .line 83
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setAppKeyIndex] onlineAppKeyIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",dailyAppkeyIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p0, "appVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/IOp;->setAppVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 141
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->appVersion:Ljava/lang/String;

    .line 142
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setAppVersion] appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static setAuthCode(Ljava/lang/String;)V
    .locals 1
    .param p0, "authCode"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/IOp;->setAuthCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static setAuthCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "authCode"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 105
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->authCode:Ljava/lang/String;

    .line 106
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setAuthCode] authCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static setCacheImpl(Lc8/jO;)V
    .locals 1
    .param p0, "cacheImpl"    # Lc8/jO;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/IOp;->setCacheImpl(Ljava/lang/String;Lc8/jO;)V

    .line 306
    return-void
.end method

.method public static setCacheImpl(Ljava/lang/String;Lc8/jO;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "cacheImpl"    # Lc8/jO;

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 317
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->cacheImpl:Lc8/jO;

    .line 318
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setCacheImpl] set CacheImpl succeed.cacheImpl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_0
    return-void
.end method

.method public static setCallFactoryImpl(Ljava/lang/String;Lc8/wPp;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "callFactory"    # Lc8/wPp;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 348
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 349
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[setCallFactoryImpl] set CallFactoryImpl succeed.callFactory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_0
    return-void
.end method

.method public static setEnableProperty(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 363
    if-eqz p1, :cond_2

    .line 364
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 365
    .local v0, "mtopConfig":Lc8/kOp;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[setEnableProperty] set enableProperty succeed.property="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 378
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_2
    :goto_1
    return-void

    .line 368
    .restart local v0    # "mtopConfig":Lc8/kOp;
    :sswitch_0
    const-string/jumbo v2, "ENABLE_NOTIFY_SESSION_RET"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "ENABLE_NEW_DEVICE_ID"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 370
    :pswitch_0
    iput-boolean p2, v0, Lc8/kOp;->notifySessionResult:Z

    goto :goto_1

    .line 373
    :pswitch_1
    iput-boolean p2, v0, Lc8/kOp;->enableNewDeviceId:Z

    goto :goto_1

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1eb22c82 -> :sswitch_0
        0x757e05e9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static setMtopConfigListener(Lc8/iMp;)V
    .locals 3
    .param p0, "mtopConfigListener"    # Lc8/iMp;

    .prologue
    .line 278
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/oOp;->setMtopConfigListener(Lc8/iMp;)V

    .line 279
    invoke-static {p0}, Lc8/zMp;->setMtopConfigListener(Lc8/iMp;)V

    .line 280
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    const-string/jumbo v2, "[setMtopConfigListener] set MtopConfigListener succeed."

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lc8/HOp;

    invoke-direct {v0, p0}, Lc8/HOp;-><init>(Lc8/iMp;)V

    .line 296
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {v0}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 297
    return-void
.end method

.method public static setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "onlineDomain"    # Ljava/lang/String;
    .param p1, "preDomain"    # Ljava/lang/String;
    .param p2, "dailyDomain"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lc8/IOp;->setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static setMtopDomain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "onlineDomain"    # Ljava/lang/String;
    .param p2, "preDomain"    # Ljava/lang/String;
    .param p3, "dailyDomain"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 162
    .local v0, "mtopConfig":Lc8/kOp;
    invoke-static {p1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, v0, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1, v2, p1}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-static {p2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, v0, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1, v2, p2}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-static {p3}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    iget-object v1, v0, Lc8/kOp;->mtopDomain:Lc8/jOp;

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1, v2, p3}, Lc8/jOp;->updateDomain(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 171
    :cond_2
    return-void
.end method

.method public static setMtopFeatureFlag(Ljava/lang/String;IZ)V
    .locals 3
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "mtopFeature"    # I
    .param p2, "openFlag"    # Z

    .prologue
    .line 205
    if-gtz p1, :cond_0

    .line 215
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 210
    .local v0, "mtopConfig":Lc8/kOp;
    if-eqz p2, :cond_1

    .line 211
    iget-object v1, v0, Lc8/kOp;->mtopFeatures:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, v0, Lc8/kOp;->mtopFeatures:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setMtopFeatureFlag(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;Z)V
    .locals 2
    .param p0, "featureEnum"    # Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .param p1, "openFlag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    invoke-static {p0}, Lc8/hOp;->getMtopFeatureByFeatureEnum(Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;)I

    move-result v0

    .line 194
    .local v0, "mtopFeature":I
    const/4 v1, 0x0

    invoke-static {v1, v0, p1}, Lc8/IOp;->setMtopFeatureFlag(Ljava/lang/String;IZ)V

    .line 195
    return-void
.end method

.method public static setParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "mtopParamType"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 389
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 390
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 392
    .local v0, "mtopConfig":Lc8/kOp;
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[setParam] set Param succeed.mtopParamType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 408
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_2
    :goto_1
    return-void

    .line 395
    .restart local v0    # "mtopConfig":Lc8/kOp;
    :sswitch_0
    const-string/jumbo v2, "HEADER"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "QUERY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "ABTEST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    .line 397
    :pswitch_0
    iget-object v1, v0, Lc8/kOp;->mtopGlobalHeaders:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 400
    :pswitch_1
    iget-object v1, v0, Lc8/kOp;->mtopGlobalQuerys:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 403
    :pswitch_2
    iget-object v1, v0, Lc8/kOp;->mtopGlobalABTestParams:Ljava/util/Map;

    invoke-interface {v1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 395
    nop

    :sswitch_data_0
    .sparse-switch
        0x49d20a8 -> :sswitch_1
        0x72b44c33 -> :sswitch_2
        0x7ec7d68d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setSecurityAppKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "securityAppKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    return-void
.end method

.method public static setUploadStats(Ljava/lang/String;Lc8/aPp;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "uploadStats"    # Lc8/aPp;

    .prologue
    .line 332
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 333
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->uploadStats:Lc8/aPp;

    .line 334
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "[setGlobalUploadStats] set IUploadStats succeed.uploadStats="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public static setWuaAuthCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "wuaAuthCode"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 128
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->wuaAuthCode:Ljava/lang/String;

    .line 129
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setWuaAuthCode] wuaAuthCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static setXOrangeQ(Ljava/lang/String;)V
    .locals 1
    .param p0, "xOrangeQ"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/IOp;->setXOrangeQ(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static setXOrangeQ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "instanceId"    # Ljava/lang/String;
    .param p1, "xOrangeQ"    # Ljava/lang/String;

    .prologue
    .line 260
    invoke-static {p1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    invoke-static {p0}, Lc8/IOp;->getMtopConfigByID(Ljava/lang/String;)Lc8/kOp;

    move-result-object v0

    .line 262
    .local v0, "mtopConfig":Lc8/kOp;
    iput-object p1, v0, Lc8/kOp;->xOrangeQ:Ljava/lang/String;

    .line 264
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string/jumbo v1, "mtopsdk.MtopSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/kOp;->instanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setXOrangeQ] set xOrangeQ succeed.xOrangeQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .end local v0    # "mtopConfig":Lc8/kOp;
    :cond_0
    return-void
.end method
