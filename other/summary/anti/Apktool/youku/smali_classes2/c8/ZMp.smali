.class public Lc8/ZMp;
.super Ljava/lang/Object;
.source "CheckAuthDuplexFilter.java"

# interfaces
.implements Lc8/JMp;
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CheckAuthDuplexFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 10
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 86
    iget-object v1, p1, Lc8/IMp;->mtopBuilder:Lc8/COp;

    .line 87
    .local v1, "mtopBuilder":Lc8/COp;
    instance-of v6, v1, Lc8/GMf;

    if-nez v6, :cond_0

    .line 88
    const-string/jumbo v6, "CONTINUE"

    .line 114
    :goto_0
    return-object v6

    :cond_0
    move-object v2, v1

    .line 91
    check-cast v2, Lc8/GMf;

    .line 92
    .local v2, "mtopBusiness":Lc8/GMf;
    iget-object v3, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 93
    .local v3, "mtopInstance":Lc8/AOp;
    iget-object v4, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 95
    .local v4, "response":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "retCode":Ljava/lang/String;
    const-string/jumbo v6, "FAIL_SYS_ACCESS_TOKEN_EXPIRED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "FAIL_SYS_ILLEGAL_ACCESS_TOKEN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lc8/GMf;->isNeedAuth()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lc8/GMf;->getRetryTime()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 100
    sget-object v6, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v6}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    const-string/jumbo v6, "mtopsdk.CheckAuthDuplexFilter"

    iget-object v7, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v8, " execute CheckAuthAfterFilter."

    invoke-static {v6, v7, v8}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    invoke-static {v3, v2}, Lc8/IMf;->addToRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 104
    iget-object v6, v2, Lc8/GMf;->authParam:Ljava/lang/String;

    iget-object v7, v2, Lc8/GMf;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    const-string/jumbo v9, "x-act-hint"

    invoke-static {v8, v9}, Lc8/cQp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v2, Lc8/GMf;->showAuthUI:Z

    invoke-static {v6, v7, v8, v9}, Lc8/PMf;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    const-string/jumbo v6, "STOP"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "mtopsdk.CheckAuthDuplexFilter"

    iget-object v7, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v8, " execute CheckAuthAfterFilter error."

    invoke-static {v6, v7, v8, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v6, "CONTINUE"

    goto :goto_0
.end method

.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 12
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 42
    iget-object v2, p1, Lc8/IMp;->mtopBuilder:Lc8/COp;

    .line 44
    .local v2, "mtopBuilder":Lc8/COp;
    instance-of v8, v2, Lc8/GMf;

    if-nez v8, :cond_0

    .line 45
    const-string/jumbo v8, "CONTINUE"

    .line 81
    :goto_0
    return-object v8

    :cond_0
    move-object v3, v2

    .line 48
    check-cast v3, Lc8/GMf;

    .line 49
    .local v3, "mtopBusiness":Lc8/GMf;
    iget-object v7, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 50
    .local v7, "request":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v4, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 51
    .local v4, "mtopInstance":Lc8/AOp;
    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v6

    .line 52
    .local v6, "needLogin":Z
    invoke-virtual {v3}, Lc8/GMf;->isNeedAuth()Z

    move-result v5

    .line 54
    .local v5, "needAuth":Z
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 56
    :try_start_0
    invoke-static {}, Lc8/PMf;->isAuthInfoValid()Z

    move-result v8

    if-nez v8, :cond_2

    .line 57
    sget-object v8, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v8}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 58
    const-string/jumbo v8, "mtopsdk.CheckAuthDuplexFilter"

    iget-object v9, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v10, " execute CheckAuthBeforeFilter."

    invoke-static {v8, v9, v10}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    invoke-static {v4, v3}, Lc8/IMf;->addToRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 61
    iget-object v8, v3, Lc8/GMf;->authParam:Ljava/lang/String;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-boolean v11, v3, Lc8/GMf;->showAuthUI:Z

    invoke-static {v8, v9, v10, v11}, Lc8/PMf;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    const-string/jumbo v8, "STOP"

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lc8/PMf;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "authToken":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 67
    const-string/jumbo v8, "OPEN"

    const-string/jumbo v9, "accessToken"

    invoke-static {v8, v9, v0}, Lc8/rQp;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "authToken":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string/jumbo v8, "CONTINUE"

    goto :goto_0

    .line 69
    .restart local v0    # "authToken":Ljava/lang/String;
    :cond_4
    :try_start_1
    sget-object v8, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v8}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 70
    const-string/jumbo v8, "mtopsdk.CheckAuthDuplexFilter"

    iget-object v9, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v10, " execute CheckAuthBeforeFilter."

    invoke-static {v8, v9, v10}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_5
    invoke-static {v4, v3}, Lc8/IMf;->addToRequestPool(Lc8/AOp;Lc8/GMf;)V

    .line 73
    iget-object v8, v3, Lc8/GMf;->authParam:Ljava/lang/String;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iget-boolean v11, v3, Lc8/GMf;->showAuthUI:Z

    invoke-static {v8, v9, v10, v11}, Lc8/PMf;->authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 74
    const-string/jumbo v8, "STOP"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 76
    .end local v0    # "authToken":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "mtopsdk.CheckAuthDuplexFilter"

    iget-object v9, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v10, " execute CheckAuthBeforeFilter error."

    invoke-static {v8, v9, v10, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    const-string/jumbo v0, "mtopsdk.CheckAuthDuplexFilter"

    return-object v0
.end method
