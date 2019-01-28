.class public Lc8/KQ;
.super Ljava/lang/Object;
.source "RecordEventMessage.java"


# static fields
.field private static instance:Lc8/KQ;


# instance fields
.field private context:Landroid/content/Context;

.field private countly:Lc8/IQ;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lc8/IQ;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "countly"    # Lc8/IQ;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/KQ;->context:Landroid/content/Context;

    .line 33
    sget-object v0, Lc8/aR;->deviceParams:Ljava/util/Map;

    iput-object v0, p0, Lc8/KQ;->params:Ljava/util/Map;

    .line 34
    iput-object p2, p0, Lc8/KQ;->countly:Lc8/IQ;

    .line 35
    iget-object v0, p0, Lc8/KQ;->params:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/KQ;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/JQ;

    invoke-direct {v1, p0, p1}, Lc8/JQ;-><init>(Lc8/KQ;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    :cond_1
    return-void
.end method

.method static synthetic access$0(Lc8/KQ;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lc8/KQ;->params:Ljava/util/Map;

    return-void
.end method

.method private getExpirationTime(Lc8/OQ;Ljava/lang/Long;)J
    .locals 8
    .param p1, "company"    # Lc8/OQ;
    .param p2, "timeStamp"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v6, 0x3e8

    const-wide/32 v4, 0x5265c00

    .line 220
    if-eqz p1, :cond_6

    .line 221
    iget-object v2, p1, Lc8/OQ;->sswitch:Lc8/WQ;

    iget-object v2, v2, Lc8/WQ;->offlineCacheExpiration:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 223
    :try_start_0
    iget-boolean v2, p1, Lc8/OQ;->timeStampUseSecond:Z

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p1, Lc8/OQ;->sswitch:Lc8/WQ;

    iget-object v2, v2, Lc8/WQ;->offlineCacheExpiration:Ljava/lang/String;

    .line 227
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 225
    mul-long/2addr v2, v6

    .line 228
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    .line 225
    add-long v0, v2, v4

    .line 275
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 232
    .end local v0    # "result":J
    :cond_0
    iget-object v2, p1, Lc8/OQ;->sswitch:Lc8/WQ;

    iget-object v2, v2, Lc8/WQ;->offlineCacheExpiration:Ljava/lang/String;

    .line 233
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 231
    mul-long/2addr v2, v6

    .line 234
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 231
    add-long v0, v2, v4

    .restart local v0    # "result":J
    goto :goto_0

    .line 237
    .end local v0    # "result":J
    :catch_0
    move-exception v2

    if-eqz p1, :cond_2

    .line 238
    iget-boolean v2, p1, Lc8/OQ;->timeStampUseSecond:Z

    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long v0, v4, v2

    .line 241
    .restart local v0    # "result":J
    goto :goto_0

    .line 243
    .end local v0    # "result":J
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v4, v2

    .line 245
    .restart local v0    # "result":J
    goto :goto_0

    .line 246
    .end local v0    # "result":J
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v4, v2

    .line 249
    .restart local v0    # "result":J
    goto :goto_0

    .line 250
    .end local v0    # "result":J
    :cond_3
    if-eqz p1, :cond_5

    .line 251
    iget-boolean v2, p1, Lc8/OQ;->timeStampUseSecond:Z

    if-eqz v2, :cond_4

    .line 253
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long v0, v4, v2

    .line 254
    .restart local v0    # "result":J
    goto :goto_0

    .line 256
    .end local v0    # "result":J
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v4, v2

    .line 258
    .restart local v0    # "result":J
    goto :goto_0

    .line 259
    .end local v0    # "result":J
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v4, v2

    .line 262
    .restart local v0    # "result":J
    goto :goto_0

    .line 263
    .end local v0    # "result":J
    :cond_6
    if-eqz p1, :cond_8

    .line 264
    iget-boolean v2, p1, Lc8/OQ;->timeStampUseSecond:Z

    if-eqz v2, :cond_7

    .line 266
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long v0, v4, v2

    .line 267
    .restart local v0    # "result":J
    goto :goto_0

    .line 269
    .end local v0    # "result":J
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v4, v2

    .line 271
    .restart local v0    # "result":J
    goto :goto_0

    .line 272
    .end local v0    # "result":J
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long v0, v4, v2

    .restart local v0    # "result":J
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lc8/IQ;)Lc8/KQ;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "countly"    # Lc8/IQ;

    .prologue
    .line 47
    const-class v1, Lc8/KQ;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/KQ;->instance:Lc8/KQ;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lc8/KQ;

    invoke-direct {v0, p0, p1}, Lc8/KQ;-><init>(Landroid/content/Context;Lc8/IQ;)V

    sput-object v0, Lc8/KQ;->instance:Lc8/KQ;

    .line 50
    :cond_0
    sget-object v0, Lc8/KQ;->instance:Lc8/KQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized recordEvent(Lc8/UQ;)V
    .locals 32
    .param p1, "sendEvent"    # Lc8/UQ;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->params:Ljava/util/Map;

    move-object/from16 v25, v0

    const-string/jumbo v26, "LBS"

    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->context:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lc8/cR;->getInstance(Landroid/content/Context;)Lc8/cR;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lc8/cR;->getLocation()Ljava/lang/String;

    move-result-object v27

    .line 54
    invoke-interface/range {v25 .. v27}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v5, "builder":Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getUrl()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lc8/YQ;->getHostURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "hostUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lc8/gR;->getSdk(Landroid/content/Context;)Lc8/TQ;

    move-result-object v20

    .line 59
    .local v20, "sdk":Lc8/TQ;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/TQ;->companies:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 60
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/TQ;->companies:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    move-object v6, v5

    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .local v6, "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    if-nez v25, :cond_1

    move-object v5, v6

    .line 181
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/OQ;

    .line 61
    .local v7, "company":Lc8/OQ;
    iget-object v0, v7, Lc8/OQ;->domain:Lc8/QQ;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/QQ;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_12

    .line 62
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v17, "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v21, ""

    .line 64
    .local v21, "separator":Ljava/lang/String;
    const-string/jumbo v8, ""

    .line 65
    .local v8, "equalizer":Ljava/lang/String;
    const-string/jumbo v15, ""

    .line 66
    .local v15, "redirectURLValue":Ljava/lang/String;
    iget-object v0, v7, Lc8/OQ;->config:Lc8/PQ;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/PQ;->arguments:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_2
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_5

    .line 75
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getUrl()Ljava/lang/String;

    move-result-object v25

    .line 74
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8, v15}, Lc8/YQ;->removeExistArgmentAndGetRedirectURL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    .line 78
    .local v16, "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v25, "URL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 79
    .local v23, "url":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v24, ""

    .line 81
    .local v24, "valueAndRedirectURL":Ljava/lang/String;
    iget-object v0, v7, Lc8/OQ;->config:Lc8/PQ;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/PQ;->arguments:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_3
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    .line 139
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v18, "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 140
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v8}, Lc8/YQ;->removeExistEvent(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, v7, Lc8/OQ;->signature:Lc8/VQ;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 145
    iget-object v0, v7, Lc8/OQ;->signature:Lc8/VQ;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/VQ;->paramKey:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 146
    invoke-static/range {v25 .. v26}, Lc8/YQ;->getSignature(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 148
    .local v22, "signatureString":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v0, v7, Lc8/OQ;->signature:Lc8/VQ;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/VQ;->paramKey:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 150
    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_3
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 152
    invoke-static/range {v22 .. v22}, Lc8/YQ;->encodingUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 148
    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .end local v22    # "signatureString":Ljava/lang/String;
    :cond_4
    sget-object v25, Lc8/EQ;->REDIRECTURL_VALUE:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 167
    .local v19, "resultUrl":Ljava/lang/String;
    iget-boolean v0, v7, Lc8/OQ;->timeStampUseSecond:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11

    .line 168
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getTimestamp()J

    move-result-wide v26

    const-wide/16 v30, 0x3e8

    div-long v26, v26, v30

    .line 167
    :goto_4
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lc8/KQ;->getExpirationTime(Lc8/OQ;Ljava/lang/Long;)J

    move-result-wide v10

    .line 170
    .local v10, "longValue":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 171
    const-string/jumbo v26, "cn.com.mma.mobile.tracking.normal"

    .line 170
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2, v10, v11}, Lc8/hR;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v6, v5

    .line 174
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 66
    .end local v10    # "longValue":J
    .end local v16    # "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "resultUrl":Ljava/lang/String;
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "valueAndRedirectURL":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/NQ;

    .line 67
    .local v4, "argument":Lc8/NQ;
    iget-boolean v0, v4, Lc8/NQ;->isRequired:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 68
    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 69
    iget-object v8, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    .line 70
    iget-object v0, v4, Lc8/NQ;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 54
    .end local v4    # "argument":Lc8/NQ;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "company":Lc8/OQ;
    .end local v8    # "equalizer":Ljava/lang/String;
    .end local v9    # "hostUrl":Ljava/lang/String;
    .end local v15    # "redirectURLValue":Ljava/lang/String;
    .end local v17    # "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "sdk":Lc8/TQ;
    .end local v21    # "separator":Ljava/lang/String;
    :catchall_0
    move-exception v25

    monitor-exit p0

    throw v25

    .line 81
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "company":Lc8/OQ;
    .restart local v8    # "equalizer":Ljava/lang/String;
    .restart local v9    # "hostUrl":Ljava/lang/String;
    .restart local v15    # "redirectURLValue":Ljava/lang/String;
    .restart local v16    # "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17    # "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "sdk":Lc8/TQ;
    .restart local v21    # "separator":Ljava/lang/String;
    .restart local v23    # "url":Ljava/lang/String;
    .restart local v24    # "valueAndRedirectURL":Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/NQ;

    .line 82
    .restart local v4    # "argument":Lc8/NQ;
    iget-boolean v0, v4, Lc8/NQ;->isRequired:Z

    move/from16 v25, v0

    if-eqz v25, :cond_3

    .line 83
    const-string/jumbo v25, "TS"

    .line 84
    iget-object v0, v4, Lc8/NQ;->key:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 85
    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v0, v4, Lc8/NQ;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 87
    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_5
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 89
    iget-boolean v0, v7, Lc8/OQ;->timeStampUseSecond:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 90
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getTimestamp()J

    move-result-wide v26

    const-wide/16 v30, 0x3e8

    div-long v26, v26, v30

    .line 89
    :goto_6
    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 85
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 88
    :cond_7
    const-string/jumbo v25, ""

    goto :goto_5

    .line 91
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getTimestamp()J

    move-result-wide v26

    goto :goto_6

    .line 93
    :cond_9
    const-string/jumbo v25, "MUDS"

    .line 94
    iget-object v0, v4, Lc8/NQ;->key:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 95
    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    iget-object v0, v4, Lc8/NQ;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 97
    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_7
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 100
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/UQ;->muds:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 99
    move-object/from16 v0, v26

    invoke-static {v0, v4, v7}, Lc8/YQ;->encodingUTF8(Ljava/lang/String;Lc8/NQ;Lc8/OQ;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 95
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 98
    :cond_a
    const-string/jumbo v25, ""

    goto :goto_7

    .line 102
    :cond_b
    const-string/jumbo v25, "REDIRECTURL"

    .line 103
    iget-object v0, v4, Lc8/NQ;->key:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 105
    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v0, v4, Lc8/NQ;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ".*"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 105
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 108
    .local v14, "patternString":Ljava/lang/String;
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 110
    .local v13, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getUrl()Ljava/lang/String;

    move-result-object v25

    .line 109
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 111
    .local v12, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 113
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    .line 112
    sput-object v25, Lc8/EQ;->REDIRECTURL_VALUE:Ljava/lang/String;

    .line 114
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "mma_redirect_url :"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    sget-object v26, Lc8/EQ;->REDIRECTURL_VALUE:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 114
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lc8/dR;->d(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 117
    .end local v12    # "matcher":Ljava/util/regex/Matcher;
    .end local v13    # "pattern":Ljava/util/regex/Pattern;
    .end local v14    # "patternString":Ljava/lang/String;
    :cond_c
    const-string/jumbo v25, "AAID"

    .line 118
    iget-object v0, v4, Lc8/NQ;->key:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 120
    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    iget-object v0, v4, Lc8/NQ;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 122
    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_8
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->params:Ljava/util/Map;

    move-object/from16 v25, v0

    .line 125
    iget-object v0, v4, Lc8/NQ;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 124
    invoke-static/range {v25 .. v25}, Lc8/YQ;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 120
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 123
    :cond_d
    const-string/jumbo v25, ""

    goto :goto_8

    .line 129
    :cond_e
    new-instance v25, Ljava/lang/StringBuilder;

    iget-object v0, v7, Lc8/OQ;->separator:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v0, v4, Lc8/NQ;->value:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 131
    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    iget-object v0, v7, Lc8/OQ;->equalizer:Ljava/lang/String;

    move-object/from16 v25, v0

    :goto_9
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KQ;->params:Ljava/util/Map;

    move-object/from16 v25, v0

    iget-object v0, v4, Lc8/NQ;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 133
    move-object/from16 v0, v25

    invoke-static {v0, v4, v7}, Lc8/YQ;->encodingUTF8(Ljava/lang/String;Lc8/NQ;Lc8/OQ;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 129
    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 132
    :cond_f
    const-string/jumbo v25, ""

    goto :goto_9

    .line 151
    .end local v4    # "argument":Lc8/NQ;
    .end local v6    # "builder":Ljava/lang/StringBuilder;
    .restart local v5    # "builder":Ljava/lang/StringBuilder;
    .restart local v18    # "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "signatureString":Ljava/lang/String;
    :cond_10
    const-string/jumbo v25, ""

    goto/16 :goto_3

    .line 169
    .end local v22    # "signatureString":Ljava/lang/String;
    .restart local v19    # "resultUrl":Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lc8/UQ;->getTimestamp()J

    move-result-wide v26

    goto/16 :goto_4

    .line 175
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "equalizer":Ljava/lang/String;
    .end local v15    # "redirectURLValue":Ljava/lang/String;
    .end local v16    # "removedExistArgmentAndGetRedirectURL":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "requiredArgmentValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "requiredEventValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "resultUrl":Ljava/lang/String;
    .end local v21    # "separator":Ljava/lang/String;
    .end local v23    # "url":Ljava/lang/String;
    .end local v24    # "valueAndRedirectURL":Ljava/lang/String;
    .restart local v6    # "builder":Ljava/lang/StringBuilder;
    :cond_12
    new-instance v25, Ljava/lang/StringBuilder;

    const-string/jumbo v26, "domain\u4e0d\u5339\u914d"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " company.domain.url:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 176
    iget-object v0, v7, Lc8/OQ;->domain:Lc8/QQ;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lc8/QQ;->url:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 175
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lc8/dR;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public recordEventWithUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lc8/UQ;

    invoke-direct {v0}, Lc8/UQ;-><init>()V

    .line 185
    .local v0, "sendEvent":Lc8/UQ;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/UQ;->setTimestamp(J)V

    .line 187
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {v0, p1}, Lc8/UQ;->setUrl(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0, v0}, Lc8/KQ;->recordEvent(Lc8/UQ;)V

    .line 207
    iget-object v2, p0, Lc8/KQ;->context:Landroid/content/Context;

    .line 208
    const-string/jumbo v3, "cn.com.mma.mobile.tracking.normal"

    .line 207
    invoke-static {v2, v3}, Lc8/hR;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    .line 210
    sget v3, Lc8/EQ;->OFFLINECACHE_LENGTH:I

    if-lt v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Lc8/KQ;->countly:Lc8/IQ;

    invoke-virtual {v2}, Lc8/IQ;->startNormalRun()V

    .line 213
    :cond_0
    return-void
.end method
