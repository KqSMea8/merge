.class public Lc8/VKj;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getStepData()Lcom/alibaba/fastjson/JSONObject;
    .locals 8

    .prologue
    .line 102
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 103
    .local v2, "step":Lcom/alibaba/fastjson/JSONObject;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 104
    .local v3, "today":Lcom/alibaba/fastjson/JSONObject;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 105
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v5, "datetime"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v5, "step"

    sget-object v6, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/TKj;->getTodaySteps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 110
    .local v4, "yesterday":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "datetime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/TKj;->getYesterdayDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " 23:59:59"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v5, "step"

    sget-object v6, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/TKj;->getYesterdaySteps(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v5, "today"

    invoke-virtual {v2, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v5, "yesterday"

    invoke-virtual {v2, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v2
.end method

.method public static postStepDataMtop()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 35
    :try_start_0
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    .line 36
    .local v4, "userInfo":Lcom/youku/usercenter/passport/remote/UserInfo;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 37
    new-instance v3, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 39
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    const-string/jumbo v6, "com.youku.aplatform.get"

    invoke-virtual {v3, v6}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 41
    const-string/jumbo v6, "1.0"

    invoke-virtual {v3, v6}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 43
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 45
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 46
    .local v2, "params":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "stepsdata"

    invoke-static {}, Lc8/VKj;->getStepData()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v6, "youku_upic"

    iget-object v7, v4, Lcom/youku/usercenter/passport/remote/UserInfo;->mAvatarUrl:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "bizParam":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, "ApiParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "bizType"

    const-string/jumbo v7, "StepService.upload"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string/jumbo v6, "bizParam"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 58
    sget-object v6, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v6

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v6

    new-instance v7, Lc8/UKj;

    invoke-direct {v7}, Lc8/UKj;-><init>()V

    invoke-virtual {v6, v7}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v6

    invoke-virtual {v6}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "ApiParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "bizParam":Ljava/lang/String;
    .end local v2    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :goto_0
    return v5

    :catch_0
    move-exception v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
