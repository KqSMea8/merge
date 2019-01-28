.class public Lc8/aNp;
.super Ljava/lang/Object;
.source "CheckSessionDuplexFilter.java"

# interfaces
.implements Lc8/JMp;
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CheckSessionDuplexFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 10
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 93
    iget-object v1, p1, Lc8/IMp;->mtopBuilder:Lc8/COp;

    .line 94
    .local v1, "mtopBuilder":Lc8/COp;
    instance-of v7, v1, Lc8/GMf;

    if-nez v7, :cond_0

    .line 95
    const-string/jumbo v7, "CONTINUE"

    .line 124
    :goto_0
    return-object v7

    :cond_0
    move-object v2, v1

    .line 98
    check-cast v2, Lc8/GMf;

    .line 99
    .local v2, "mtopBusiness":Lc8/GMf;
    iget-object v4, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 100
    .local v4, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v3, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 101
    .local v3, "mtopInstance":Lc8/AOp;
    iget-object v5, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 104
    .local v5, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v3}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v7

    iget-boolean v7, v7, Lc8/kOp;->notifySessionResult:Z

    if-eqz v7, :cond_1

    .line 105
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    const-string/jumbo v8, "x-session-ret"

    invoke-static {v7, v8}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "session_ret":Ljava/lang/String;
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "x-session-ret"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v7, "Date"

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "Date"

    invoke-static {v8, v9}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v3, v0}, Lc8/nNf;->setSessionInvalid(Lc8/AOp;Landroid/os/Bundle;)V

    .line 114
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v6    # "session_ret":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    invoke-virtual {v2}, Lc8/GMf;->getRetryTime()I

    move-result v7

    if-nez v7, :cond_3

    .line 116
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    const-string/jumbo v7, "mtopsdk.CheckSessionDuplexFilter"

    iget-object v8, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v9, "execute CheckSessionAfterFilter."

    invoke-static {v7, v8, v9}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_2
    invoke-static {v3, v2}, Lc8/IMf;->addToRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 120
    invoke-virtual {v2}, Lc8/GMf;->isShowLoginUI()Z

    move-result v7

    invoke-static {v3, v7, v5}, Lc8/nNf;->login(Lc8/AOp;ZLjava/lang/Object;)V

    .line 121
    const-string/jumbo v7, "STOP"

    goto :goto_0

    .line 124
    :cond_3
    const-string/jumbo v7, "CONTINUE"

    goto :goto_0
.end method

.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 10
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 42
    iget-object v2, p1, Lc8/IMp;->mtopBuilder:Lc8/COp;

    .line 44
    .local v2, "mtopBuilder":Lc8/COp;
    instance-of v7, v2, Lc8/GMf;

    if-nez v7, :cond_0

    .line 45
    const-string/jumbo v7, "CONTINUE"

    .line 87
    :goto_0
    return-object v7

    :cond_0
    move-object v3, v2

    .line 49
    check-cast v3, Lc8/GMf;

    .line 51
    .local v3, "mtopBusiness":Lc8/GMf;
    iget-object v6, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 52
    .local v6, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v4, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 53
    .local v4, "mtopInstance":Lc8/AOp;
    invoke-virtual {v6}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v5

    .line 60
    .local v5, "needLogin":Z
    if-eqz v5, :cond_2

    :try_start_0
    invoke-static {v4}, Lc8/nNf;->isSessionValid(Lc8/AOp;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 62
    const-string/jumbo v7, "mtopsdk.CheckSessionDuplexFilter"

    iget-object v8, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v9, "execute CheckSessionBeforeFilter."

    invoke-static {v7, v8, v9}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    invoke-static {v4, v3}, Lc8/IMf;->addToRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 65
    invoke-virtual {v3}, Lc8/GMf;->isShowLoginUI()Z

    move-result v7

    invoke-static {v4, v7, v6}, Lc8/nNf;->login(Lc8/AOp;ZLjava/lang/Object;)V

    .line 66
    const-string/jumbo v7, "STOP"

    goto :goto_0

    .line 70
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lc8/AOp;->getSid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 71
    const-string/jumbo v7, "mtopsdk.CheckSessionDuplexFilter"

    iget-object v8, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v9, "session in loginContext is valid but mtopInstance\'s sid is null"

    invoke-static {v7, v8, v9}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v4}, Lc8/nNf;->getLoginContext(Lc8/AOp;)Lc8/lNf;

    move-result-object v1

    .line 73
    .local v1, "loginContext":Lc8/lNf;
    if-eqz v1, :cond_4

    iget-object v7, v1, Lc8/lNf;->sid:Ljava/lang/String;

    invoke-static {v7}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 74
    iget-object v7, v1, Lc8/lNf;->sid:Ljava/lang/String;

    iget-object v8, v1, Lc8/lNf;->userId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Lc8/AOp;->registerSessionInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/AOp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "loginContext":Lc8/lNf;
    :cond_3
    :goto_1
    const-string/jumbo v7, "CONTINUE"

    goto :goto_0

    .line 76
    .restart local v1    # "loginContext":Lc8/lNf;
    :cond_4
    :try_start_1
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 77
    const-string/jumbo v7, "mtopsdk.CheckSessionDuplexFilter"

    iget-object v8, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v9, "execute CheckSessionBeforeFilter."

    invoke-static {v7, v8, v9}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_5
    invoke-static {v4, v3}, Lc8/IMf;->addToRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 80
    invoke-virtual {v3}, Lc8/GMf;->isShowLoginUI()Z

    move-result v7

    invoke-static {v4, v7, v6}, Lc8/nNf;->login(Lc8/AOp;ZLjava/lang/Object;)V

    .line 81
    const-string/jumbo v7, "STOP"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 84
    .end local v1    # "loginContext":Lc8/lNf;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mtopsdk.CheckSessionDuplexFilter"

    iget-object v8, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v9, " execute CheckSessionBeforeFilter error."

    invoke-static {v7, v8, v9, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 36
    const-string/jumbo v0, "mtopsdk.CheckSessionDuplexFilter"

    return-object v0
.end method
