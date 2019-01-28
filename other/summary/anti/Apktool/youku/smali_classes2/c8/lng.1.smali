.class public Lc8/lng;
.super Ljava/lang/Object;
.source "CrowdManager.java"


# static fields
.field public static sCrowdServiceMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExpireTime(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "crowdServiceMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    .local v0, "curTime":J
    const/4 v2, 0x0

    .line 174
    .local v2, "hasExpireItem":Z
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 175
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;

    .line 177
    .local v3, "item":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    invoke-static {v0, v1, v3}, Lc8/lng;->isItemExpired(JLcom/tmall/wireless/ant/crowd/CrowdServiceItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 180
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    .end local v3    # "item":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    :cond_1
    return v2
.end method

.method private static commitValidCrowdWithUt(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "crowdServiceMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 153
    .local v3, "validCrowdJson":Lorg/json/JSONObject;
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;

    .line 154
    .local v2, "item":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->valid:Z

    if-eqz v4, :cond_0

    .line 155
    iget-object v4, v2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->key:Ljava/lang/String;

    iget-wide v6, v2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->version:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/mog;->commitValidCrowd(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static isItemExpired(JLcom/tmall/wireless/ant/crowd/CrowdServiceItem;)Z
    .locals 2
    .param p0, "curTime"    # J
    .param p2, "item"    # Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;

    .prologue
    .line 187
    iget-wide v0, p2, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->expireTime:J

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadLocalCrowdInfo()V
    .locals 7

    .prologue
    .line 34
    :try_start_0
    const-string/jumbo v5, "/ant_abtest"

    const-string/jumbo v6, "crowd_config_info"

    invoke-static {v5, v6}, Lc8/kog;->restoreObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 35
    .local v3, "localObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 36
    .local v1, "crowdServiceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    instance-of v5, v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_0

    .line 37
    move-object v0, v3

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    move-object v1, v0

    .line 39
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    :cond_1
    :goto_0
    return-void

    .line 43
    :cond_2
    invoke-static {v1}, Lc8/lng;->checkExpireTime(Ljava/util/Map;)Z

    move-result v2

    .line 45
    .local v2, "hasExpireItem":Z
    sput-object v1, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    .line 46
    const-string/jumbo v5, "loadLocalCrowdInfo sCrowdServiceMaps:"

    invoke-static {v5}, Lc8/lng;->printLocalCrowdInfo(Ljava/lang/String;)V

    .line 48
    if-eqz v2, :cond_1

    .line 49
    invoke-static {}, Lc8/lng;->saveCrowdInfo()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v2    # "hasExpireItem":Z
    :catch_0
    move-exception v4

    .line 52
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static printLocalCrowdInfo(Ljava/lang/String;)V
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 194
    sget-boolean v0, Lc8/log;->LOG_OPEN:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lc8/log;->info([Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method private static saveCrowdInfo()V
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    const-string/jumbo v1, "/ant_abtest"

    const-string/jumbo v2, "crowd_config_info"

    invoke-static {v0, v1, v2}, Lc8/kog;->persistentObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static syncCrowdInfo(Lorg/json/JSONObject;)Z
    .locals 19
    .param p0, "crowdInfoObject"    # Lorg/json/JSONObject;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->length()I

    move-result v16

    if-nez v16, :cond_1

    .line 75
    :cond_0
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "syncCrowdInfo crowdInfoObject is null"

    aput-object v18, v16, v17

    invoke-static/range {v16 .. v16}, Lc8/log;->info([Ljava/lang/String;)V

    .line 76
    const/16 v16, 0x0

    .line 147
    :goto_0
    return v16

    .line 79
    :cond_1
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 80
    .local v5, "crowdServiceMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;>;"
    sget-object v16, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 83
    :try_start_0
    const-string/jumbo v16, "service.crowd"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 84
    .local v4, "crowdKeyObject":Lorg/json/JSONObject;
    if-nez v4, :cond_2

    .line 85
    const/16 v16, 0x0

    goto :goto_0

    .line 87
    :cond_2
    const-string/jumbo v16, "items"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 88
    .local v3, "crowdItemArray":Lorg/json/JSONArray;
    if-nez v3, :cond_3

    .line 89
    const/16 v16, 0x0

    goto :goto_0

    .line 92
    :cond_3
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_9

    .line 93
    invoke-virtual {v3, v9}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 95
    .local v13, "object":Lorg/json/JSONObject;
    const-string/jumbo v16, "key"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "key":Ljava/lang/String;
    const-string/jumbo v16, "action"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 98
    .local v14, "version":J
    const-string/jumbo v16, "expireTime"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 100
    .local v10, "expireTime":J
    invoke-interface {v5, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 101
    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;

    .line 104
    .local v8, "existedItem":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    iget-wide v0, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->version:J

    move-wide/from16 v16, v0

    cmp-long v16, v14, v16

    if-lez v16, :cond_4

    .line 106
    const-string/jumbo v16, "add"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 107
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->valid:Z

    .line 108
    iput-object v2, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->action:Ljava/lang/String;

    .line 109
    iput-wide v14, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->version:J

    .line 110
    iput-wide v10, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->expireTime:J

    .line 92
    .end local v8    # "existedItem":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 111
    .restart local v8    # "existedItem":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    :cond_5
    const-string/jumbo v16, "del"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 112
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->valid:Z

    .line 113
    iput-object v2, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->action:Ljava/lang/String;

    .line 114
    iput-wide v14, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->version:J

    .line 115
    iput-wide v10, v8, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->expireTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 133
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "crowdItemArray":Lorg/json/JSONArray;
    .end local v4    # "crowdKeyObject":Lorg/json/JSONObject;
    .end local v8    # "existedItem":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    .end local v9    # "i":I
    .end local v10    # "expireTime":J
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v14    # "version":J
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    .line 135
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 119
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "crowdItemArray":Lorg/json/JSONArray;
    .restart local v4    # "crowdKeyObject":Lorg/json/JSONObject;
    .restart local v9    # "i":I
    .restart local v10    # "expireTime":J
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "object":Lorg/json/JSONObject;
    .restart local v14    # "version":J
    :cond_6
    :try_start_1
    new-instance v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;

    invoke-direct {v6}, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;-><init>()V

    .line 120
    .local v6, "curItem":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    iput-object v12, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->key:Ljava/lang/String;

    .line 121
    iput-object v2, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->action:Ljava/lang/String;

    .line 122
    iput-wide v14, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->version:J

    .line 123
    iput-wide v10, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->expireTime:J

    .line 125
    const-string/jumbo v16, "add"

    iget-object v0, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 126
    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->valid:Z

    .line 130
    :cond_7
    :goto_3
    iget-object v0, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 127
    :cond_8
    const-string/jumbo v16, "del"

    iget-object v0, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 128
    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v6, Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;->valid:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 138
    .end local v2    # "action":Ljava/lang/String;
    .end local v6    # "curItem":Lcom/tmall/wireless/ant/crowd/CrowdServiceItem;
    .end local v10    # "expireTime":J
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v14    # "version":J
    :cond_9
    invoke-static {v5}, Lc8/lng;->checkExpireTime(Ljava/util/Map;)Z

    .line 140
    invoke-static {v5}, Lc8/lng;->commitValidCrowdWithUt(Ljava/util/Map;)V

    .line 142
    sput-object v5, Lc8/lng;->sCrowdServiceMaps:Ljava/util/Map;

    .line 143
    invoke-static {}, Lc8/lng;->saveCrowdInfo()V

    .line 145
    const-string/jumbo v16, "syncCrowdInfo sCrowdServiceMaps:"

    invoke-static/range {v16 .. v16}, Lc8/lng;->printLocalCrowdInfo(Ljava/lang/String;)V

    .line 147
    const/16 v16, 0x1

    goto/16 :goto_0
.end method
