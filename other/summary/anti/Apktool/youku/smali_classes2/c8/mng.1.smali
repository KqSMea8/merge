.class public Lc8/mng;
.super Ljava/lang/Object;
.source "ExpressionEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private between(JJJ)Z
    .locals 5
    .param p1, "value"    # J
    .param p3, "fieldMinValue"    # J
    .param p5, "fieldMaxValue"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "between value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldMinValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldMaxValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 152
    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    cmp-long v2, p1, p5

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contains value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fieldValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/log;->info([Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private endsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "endsWith value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fieldValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/log;->info([Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private equal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "fieldValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 62
    instance-of v5, p2, Ljava/lang/Long;

    if-eqz v5, :cond_1

    instance-of v5, p3, Ljava/lang/Long;

    if-eqz v5, :cond_1

    .line 63
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "equal Long value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " fieldValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V

    .line 64
    if-ne p2, p3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v3

    .line 69
    :cond_1
    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    instance-of v5, p3, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 70
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "equal String value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " fieldValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    :cond_2
    const-string/jumbo v5, "service.crowd"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, p2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_4

    instance-of v5, p3, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 78
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "equal HashMap value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " fieldValue:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V

    move-object v0, p2

    .line 79
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .local v0, "crowdServiceMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;

    .line 81
    .local v2, "item":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    if-eqz v2, :cond_4

    iget-boolean v5, v2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->valid:Z

    if-eqz v5, :cond_4

    .line 82
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "evaluate equal CrowdServiceItem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Lc8/lng;->isItemExpired(JLcom/tmall/wireless/ant/crowd/CrowdServiceItem;)Z

    move-result v1

    .line 84
    .local v1, "expired":Z
    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_3
    if-eqz v1, :cond_0

    move v3, v4

    goto/16 :goto_0

    .end local v0    # "crowdServiceMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    .end local v1    # "expired":Z
    .end local v2    # "item":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    :cond_4
    move v3, v4

    .line 89
    goto/16 :goto_0
.end method

.method private static getLocalFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    const/4 v1, 0x0

    .line 403
    :cond_0
    :goto_0
    return-object v1

    .line 382
    :cond_1
    const/4 v1, 0x0

    .line 383
    .local v1, "result":Ljava/lang/Object;
    sget-object v0, Lc8/eog;->sDeviceInfoFetcher:Lc8/eog;

    .line 384
    .local v0, "deviceInfoFetcher":Lc8/eog;
    const-string/jumbo v2, "mtop.deviceId"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 385
    sget-object v2, Lc8/kog;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lc8/eog;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 386
    .local v1, "result":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v2, "mtop.userId"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    invoke-virtual {v0}, Lc8/eog;->getUserId()Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 388
    .local v1, "result":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v2, "mtop.appName"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    invoke-virtual {v0}, Lc8/eog;->getTtidModel()Lc8/dog;

    move-result-object v2

    iget-object v1, v2, Lc8/dog;->appName:Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 390
    .local v1, "result":Ljava/lang/Object;
    :cond_4
    const-string/jumbo v2, "mtop.platform"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 391
    invoke-virtual {v0}, Lc8/eog;->getTtidModel()Lc8/dog;

    move-result-object v2

    iget-object v1, v2, Lc8/dog;->platform:Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 392
    .local v1, "result":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v2, "mtop.appVersion"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 393
    invoke-virtual {v0}, Lc8/eog;->getTtidModel()Lc8/dog;

    move-result-object v2

    iget-object v1, v2, Lc8/dog;->appVersion:Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 394
    .local v1, "result":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v2, "device.channel"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 395
    invoke-virtual {v0}, Lc8/eog;->getTtidModel()Lc8/dog;

    move-result-object v2

    iget-object v1, v2, Lc8/dog;->channel:Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 396
    .local v1, "result":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v2, "device.userNick"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 397
    invoke-virtual {v0}, Lc8/eog;->getExternalInfoModel()Lc8/cog;

    move-result-object v2

    iget-object v1, v2, Lc8/cog;->nickName:Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 398
    .local v1, "result":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v2, "device.city"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 399
    invoke-virtual {v0}, Lc8/eog;->getExternalInfoModel()Lc8/cog;

    move-result-object v2

    iget-object v1, v2, Lc8/cog;->cityName:Ljava/lang/String;

    .local v1, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 400
    .local v1, "result":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v2, "service.crowd"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 401
    sget-object v1, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    .local v1, "result":Ljava/util/Map;
    goto/16 :goto_0
.end method

.method private isLogicalOperator(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string/jumbo v0, "$and"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "$or"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lessThan(JJ)Z
    .locals 5
    .param p1, "value"    # J
    .param p3, "fieldValue"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lessThan value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 136
    cmp-long v2, p1, p3

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private lessThanOrEqual(JJ)Z
    .locals 5
    .param p1, "value"    # J
    .param p3, "fieldValue"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lessThanOrEqual value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 147
    cmp-long v2, p1, p3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private logicalOperate(Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "criterions"    # Lorg/json/JSONArray;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 182
    :try_start_0
    const-string/jumbo v9, "$and"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 184
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 185
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    .local v0, "criterion":Lorg/json/JSONObject;
    const-string/jumbo v9, "fieldName"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "fieldName":Ljava/lang/String;
    const-string/jumbo v9, "fieldValue"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "fieldValue":Ljava/lang/Object;
    const-string/jumbo v9, "type"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "fieldType":Ljava/lang/String;
    invoke-direct {p0, v3}, Lc8/mng;->isLogicalOperator(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 192
    const-string/jumbo v8, "criterions"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 193
    .local v6, "iterativeCriterions":Lorg/json/JSONArray;
    invoke-direct {p0, v3, v6}, Lc8/mng;->logicalOperate(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v7

    .line 221
    .end local v0    # "criterion":Lorg/json/JSONObject;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "fieldType":Ljava/lang/String;
    .end local v4    # "fieldValue":Ljava/lang/Object;
    .end local v5    # "i":I
    .end local v6    # "iterativeCriterions":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return v7

    .line 194
    .restart local v0    # "criterion":Lorg/json/JSONObject;
    .restart local v2    # "fieldName":Ljava/lang/String;
    .restart local v3    # "fieldType":Ljava/lang/String;
    .restart local v4    # "fieldValue":Ljava/lang/Object;
    .restart local v5    # "i":I
    :cond_1
    invoke-direct {p0, v2, v4, v3}, Lc8/mng;->relationalOperate(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "criterion":Lorg/json/JSONObject;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "fieldType":Ljava/lang/String;
    .end local v4    # "fieldValue":Ljava/lang/Object;
    :cond_2
    move v7, v8

    .line 198
    goto :goto_1

    .line 199
    .end local v5    # "i":I
    :cond_3
    const-string/jumbo v9, "$or"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 201
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 202
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 203
    .restart local v0    # "criterion":Lorg/json/JSONObject;
    const-string/jumbo v9, "fieldName"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    .restart local v2    # "fieldName":Ljava/lang/String;
    const-string/jumbo v9, "fieldValue"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 205
    .restart local v4    # "fieldValue":Ljava/lang/Object;
    const-string/jumbo v9, "type"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .restart local v3    # "fieldType":Ljava/lang/String;
    invoke-direct {p0, v3}, Lc8/mng;->isLogicalOperator(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 209
    const-string/jumbo v8, "criterions"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 210
    .restart local v6    # "iterativeCriterions":Lorg/json/JSONArray;
    invoke-direct {p0, v3, v6}, Lc8/mng;->logicalOperate(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result v7

    goto :goto_1

    .line 211
    .end local v6    # "iterativeCriterions":Lorg/json/JSONArray;
    :cond_4
    invoke-direct {p0, v2, v4, v3}, Lc8/mng;->relationalOperate(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_5

    move v7, v8

    .line 212
    goto :goto_1

    .line 201
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 218
    .end local v0    # "criterion":Lorg/json/JSONObject;
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v3    # "fieldType":Ljava/lang/String;
    .end local v4    # "fieldValue":Ljava/lang/Object;
    .end local v5    # "i":I
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private moreThan(JJ)Z
    .locals 5
    .param p1, "value"    # J
    .param p3, "fieldValue"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moreThan value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 131
    cmp-long v2, p1, p3

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private moreThanOrEqual(JJ)Z
    .locals 5
    .param p1, "value"    # J
    .param p3, "fieldValue"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moreThanOrEqual value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 142
    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "fieldValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 93
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 94
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notEqual value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 95
    if-eq p1, p2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 101
    new-array v2, v0, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notEqual value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fieldValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lc8/log;->info([Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0
.end method

.method private regexMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private relationalOperate(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 20
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 226
    :cond_0
    const/4 v5, 0x0

    .line 342
    :goto_0
    return v5

    .line 229
    :cond_1
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "relationalOperate fieldName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " fieldType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lc8/log;->info([Ljava/lang/String;)V

    .line 232
    invoke-static/range {p1 .. p1}, Lc8/mng;->getLocalFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 234
    .local v17, "value":Ljava/lang/Object;
    const-string/jumbo v5, "$eq"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 235
    if-eqz v17, :cond_2

    if-nez p2, :cond_3

    .line 236
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 238
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lc8/mng;->equal(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 240
    :cond_4
    const-string/jumbo v5, "$ne"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 241
    if-eqz v17, :cond_5

    if-nez p2, :cond_6

    .line 242
    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 244
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lc8/mng;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 246
    :cond_7
    const-string/jumbo v5, "$re"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 248
    .local v19, "valueString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 250
    .local v16, "fieldValueString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 251
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 253
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lc8/mng;->regexMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 255
    .end local v16    # "fieldValueString":Ljava/lang/String;
    .end local v19    # "valueString":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "$ct"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 257
    .restart local v19    # "valueString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 259
    .restart local v16    # "fieldValueString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 260
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 262
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lc8/mng;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 264
    .end local v16    # "fieldValueString":Ljava/lang/String;
    .end local v19    # "valueString":Ljava/lang/String;
    :cond_d
    const-string/jumbo v5, "$sw"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 266
    .restart local v19    # "valueString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 268
    .restart local v16    # "fieldValueString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 269
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 271
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lc8/mng;->startsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 273
    .end local v16    # "fieldValueString":Ljava/lang/String;
    .end local v19    # "valueString":Ljava/lang/String;
    :cond_10
    const-string/jumbo v5, "$ew"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 275
    .restart local v19    # "valueString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 277
    .restart local v16    # "fieldValueString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 278
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 280
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lc8/mng;->endsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_0

    .line 282
    .end local v16    # "fieldValueString":Ljava/lang/String;
    .end local v19    # "valueString":Ljava/lang/String;
    :cond_13
    const-string/jumbo v5, "$gt"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v18

    .line 284
    .local v18, "valueNumber":Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v15

    .line 286
    .local v15, "fieldValueNumber":Ljava/lang/Long;
    if-eqz v18, :cond_14

    if-nez v15, :cond_15

    .line 287
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 289
    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lc8/mng;->moreThan(JJ)Z

    move-result v5

    goto/16 :goto_0

    .line 291
    .end local v15    # "fieldValueNumber":Ljava/lang/Long;
    .end local v18    # "valueNumber":Ljava/lang/Long;
    :cond_16
    const-string/jumbo v5, "$gte"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v18

    .line 293
    .restart local v18    # "valueNumber":Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v15

    .line 295
    .restart local v15    # "fieldValueNumber":Ljava/lang/Long;
    if-eqz v18, :cond_17

    if-nez v15, :cond_18

    .line 296
    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 298
    :cond_18
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lc8/mng;->moreThanOrEqual(JJ)Z

    move-result v5

    goto/16 :goto_0

    .line 300
    .end local v15    # "fieldValueNumber":Ljava/lang/Long;
    .end local v18    # "valueNumber":Ljava/lang/Long;
    :cond_19
    const-string/jumbo v5, "$lt"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v18

    .line 302
    .restart local v18    # "valueNumber":Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v15

    .line 304
    .restart local v15    # "fieldValueNumber":Ljava/lang/Long;
    if-eqz v18, :cond_1a

    if-nez v15, :cond_1b

    .line 305
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 307
    :cond_1b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lc8/mng;->lessThan(JJ)Z

    move-result v5

    goto/16 :goto_0

    .line 309
    .end local v15    # "fieldValueNumber":Ljava/lang/Long;
    .end local v18    # "valueNumber":Ljava/lang/Long;
    :cond_1c
    const-string/jumbo v5, "$lte"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v18

    .line 311
    .restart local v18    # "valueNumber":Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v15

    .line 313
    .restart local v15    # "fieldValueNumber":Ljava/lang/Long;
    if-eqz v18, :cond_1d

    if-nez v15, :cond_1e

    .line 314
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 316
    :cond_1e
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lc8/mng;->lessThanOrEqual(JJ)Z

    move-result v5

    goto/16 :goto_0

    .line 318
    .end local v15    # "fieldValueNumber":Ljava/lang/Long;
    .end local v18    # "valueNumber":Ljava/lang/Long;
    :cond_1f
    const-string/jumbo v5, "$bt"

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/mng;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v18

    .line 320
    .restart local v18    # "valueNumber":Ljava/lang/Long;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lc8/mng;->toJSONArray(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v12

    .line 322
    .local v12, "fieldValueJSONArray":Lorg/json/JSONArray;
    if-eqz v18, :cond_20

    if-eqz v12, :cond_20

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_21

    .line 323
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 326
    :cond_21
    const/4 v14, 0x0

    .line 327
    .local v14, "fieldValueMinNumber":Ljava/lang/Long;
    const/4 v13, 0x0

    .line 329
    .local v13, "fieldValueMaxNumber":Ljava/lang/Long;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 330
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 335
    :goto_1
    if-eqz v14, :cond_22

    if-nez v13, :cond_23

    .line 336
    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v4

    .line 332
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {v4}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 338
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_23
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lc8/mng;->between(JJJ)Z

    move-result v5

    goto/16 :goto_0

    .line 342
    .end local v12    # "fieldValueJSONArray":Lorg/json/JSONArray;
    .end local v13    # "fieldValueMaxNumber":Ljava/lang/Long;
    .end local v14    # "fieldValueMinNumber":Ljava/lang/Long;
    .end local v18    # "valueNumber":Ljava/lang/Long;
    :cond_24
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private startsWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "fieldValue"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startsWith value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fieldValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/log;->info([Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private toJSONArray(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 369
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Lorg/json/JSONArray;

    .line 372
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 355
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 356
    check-cast p1, Ljava/lang/Long;

    .line 365
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 357
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 358
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 359
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 361
    :try_start_0
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 365
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 346
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Ljava/lang/String;

    .line 351
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 348
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    .line 349
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 351
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public evaluate(Ljava/lang/String;)Z
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 161
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    const-string/jumbo v3, "$and"

    .line 166
    :cond_0
    const-string/jumbo v4, "criterions"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 167
    .local v0, "criterions":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 168
    invoke-direct {p0, v3, v0}, Lc8/mng;->logicalOperate(Ljava/lang/String;Lorg/json/JSONArray;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 177
    .end local v0    # "criterions":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :goto_0
    return v4

    .line 171
    .restart local v0    # "criterions":Lorg/json/JSONArray;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "criterions":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "type":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {v1}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    .line 177
    const/4 v4, 0x0

    goto :goto_0
.end method
