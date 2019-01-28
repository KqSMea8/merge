.class public Lc8/hYb;
.super Ljava/lang/Object;
.source "CommonConfigRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method private static checkConfigIfNeedStartTimer(Lcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z
    .locals 8
    .param p0, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p1, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    .line 90
    const/4 v6, 0x2

    iget v7, p0, Lcom/alibaba/poplayer/trigger/Event;->source:I

    if-ne v6, v7, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->getStartTimeStamp()J

    move-result-wide v4

    .line 92
    .local v4, "startTime":J
    invoke-virtual {p1}, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->getEndTimeStamp()J

    move-result-wide v2

    .line 93
    .local v2, "endTime":J
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/poplayer/PopLayer;->getCurrentTimeStamp()J

    move-result-wide v0

    .line 94
    .local v0, "currentTime":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    .line 95
    const/4 v6, 0x1

    .line 98
    .end local v0    # "currentTime":J
    .end local v2    # "endTime":J
    .end local v4    # "startTime":J
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static checkConfigItemStatus(Lcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .locals 3
    .param p0, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p1, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    .line 41
    sget-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->INVALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    .line 43
    .local v0, "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    invoke-static {p1}, Lc8/hYb;->upToLimitPopupCount(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 59
    .end local v0    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .local v1, "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    :goto_0
    return-object v1

    .line 47
    .end local v1    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .restart local v0    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    :cond_0
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alibaba/poplayer/PopLayer;->isValidConfig(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 48
    .end local v0    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .restart local v1    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    goto :goto_0

    .line 51
    .end local v1    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .restart local v0    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    :cond_1
    invoke-static {p1}, Lc8/hYb;->checkTimeIsMatch(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    sget-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    :cond_2
    :goto_1
    move-object v1, v0

    .line 59
    .end local v0    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .restart local v1    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    goto :goto_0

    .line 55
    .end local v1    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    .restart local v0    # "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    :cond_3
    invoke-static {p0, p1}, Lc8/hYb;->checkConfigIfNeedStartTimer(Lcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    sget-object v0, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED_BUT_UNSTARTED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    goto :goto_1
.end method

.method private static checkTimeIsMatch(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z
    .locals 11
    .param p0, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 64
    iget-boolean v8, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->appear:Z

    if-eqz v8, :cond_0

    .line 65
    const-string/jumbo v8, "ConfigManager.checkTimeAndRescheduleIfNeed.UUID{%s}.return.ignoreTime"

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :goto_0
    return v6

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->getStartTimeStamp()J

    move-result-wide v4

    .line 70
    .local v4, "startTime":J
    invoke-virtual {p0}, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->getEndTimeStamp()J

    move-result-wide v2

    .line 72
    .local v2, "endTime":J
    cmp-long v8, v2, v4

    if-gtz v8, :cond_1

    .line 73
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ConfigManager.checkTimeAndRescheduleIfNeed.UUID{"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "}.error.endTime<=startTime"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Loge(Ljava/lang/String;)V

    move v6, v7

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/poplayer/PopLayer;->getCurrentTimeStamp()J

    move-result-wide v0

    .line 78
    .local v0, "currentTime":J
    cmp-long v8, v0, v4

    if-lez v8, :cond_2

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    .line 79
    const-string/jumbo v8, "ConfigManager.checkTimeAndRescheduleIfNeed.UUID{%s}.return.timeToStart"

    new-array v9, v6, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v8, "ConfigManager.checkTimeAndRescheduleIfNeed.UUID{%s}.return.outOfTime"

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-static {v8, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v7

    .line 84
    goto :goto_0
.end method

.method private static upToLimitPopupCount(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z
    .locals 6
    .param p0, "config"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    iget v3, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->times:I

    if-nez v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    iget-object v3, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/alibaba/poplayer/utils/PopLayerSharedPrererence;->getPopCountsFor(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "count":I
    const-string/jumbo v3, "DefaultConfigManager.upToLimitPopupCount?localCount=%s&configTimes=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget v5, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->times:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget v3, p0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->times:I

    if-lt v0, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
