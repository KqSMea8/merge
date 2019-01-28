.class public Lc8/MQ;
.super Ljava/lang/Thread;
.source "SendMessageThread.java"


# instance fields
.field connectUtil:Lc8/ZQ;

.field private context:Landroid/content/Context;

.field private instance:Lc8/IQ;

.field private isInterruptThread:Z

.field private isNormalList:Z

.field private isRunning:Z

.field private object:Ljava/lang/Object;

.field private spName:Ljava/lang/String;

.field public totalSize:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 2
    .param p1, "spFileName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isNormalList"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 41
    iput-boolean v0, p0, Lc8/MQ;->isInterruptThread:Z

    .line 42
    iput v0, p0, Lc8/MQ;->totalSize:I

    .line 43
    iput-object v1, p0, Lc8/MQ;->connectUtil:Lc8/ZQ;

    .line 44
    iput-object v1, p0, Lc8/MQ;->object:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/MQ;->isRunning:Z

    .line 55
    iput-object p1, p0, Lc8/MQ;->spName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 57
    iput-boolean p3, p0, Lc8/MQ;->isNormalList:Z

    .line 58
    invoke-static {}, Lc8/ZQ;->getInstance()Lc8/ZQ;

    move-result-object v0

    iput-object v0, p0, Lc8/MQ;->connectUtil:Lc8/ZQ;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/MQ;->object:Ljava/lang/Object;

    .line 60
    invoke-static {}, Lc8/IQ;->sharedInstance()Lc8/IQ;

    move-result-object v0

    iput-object v0, p0, Lc8/MQ;->instance:Lc8/IQ;

    .line 61
    return-void
.end method

.method private handleFailedResult(Ljava/lang/String;J)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueExpire"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 203
    iget-boolean v4, p0, Lc8/MQ;->isNormalList:Z

    if-eqz v4, :cond_0

    .line 205
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 206
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.normal"

    .line 205
    invoke-static {v4, v5, p1}, Lc8/hR;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 207
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 208
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.falied"

    .line 207
    invoke-static {v4, v5, p1, p2, p3}, Lc8/hR;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 209
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 210
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.other"

    .line 209
    invoke-static {v4, v5, p1, v6, v7}, Lc8/hR;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 229
    :goto_0
    :try_start_0
    iget-object v4, p0, Lc8/MQ;->instance:Lc8/IQ;

    invoke-virtual {v4}, Lc8/IQ;->getHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 230
    .local v2, "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v2    # "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 213
    :cond_0
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 214
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.other"

    .line 213
    invoke-static {v4, v5, p1}, Lc8/hR;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 215
    .local v0, "failedTime":J
    add-long/2addr v0, v6

    .line 216
    const-wide/16 v4, 0x3

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 217
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 218
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.falied"

    .line 217
    invoke-static {v4, v5, p1}, Lc8/hR;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 221
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.other"

    .line 220
    invoke-static {v4, v5, p1}, Lc8/hR;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 222
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mma_failed\u53d1\u9001\u5931\u8d25\u8d85\u8fc7\u4e09\u6b21\uff0c\u5220\u9664other\u4e2d\u8bb0\u5f55"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/dR;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    .end local v3    # "result":Z
    :cond_1
    iget-object v4, p0, Lc8/MQ;->context:Landroid/content/Context;

    .line 225
    const-string/jumbo v5, "cn.com.mma.mobile.tracking.other"

    .line 224
    invoke-static {v4, v5, p1, v0, v1}, Lc8/hR;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 233
    .end local v0    # "failedTime":J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private handleSuccessResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sharedPreferencedName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v2, p0, Lc8/MQ;->context:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lc8/hR;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    iget-boolean v2, p0, Lc8/MQ;->isNormalList:Z

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lc8/MQ;->context:Landroid/content/Context;

    const-string/jumbo v3, "cn.com.mma.mobile.tracking.other"

    .line 243
    invoke-static {v2, v3, p2}, Lc8/hR;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 245
    .local v1, "result":Z
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mma_failed\u6570\u636e\u53d1\u9001\u6210\u529f\uff0c\u5220\u9664other\u4e2d\u8bb0\u5f55"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/dR;->d(Ljava/lang/String;)V

    .line 248
    .end local v1    # "result":Z
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/MQ;->instance:Lc8/IQ;

    invoke-virtual {v2}, Lc8/IQ;->getHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 249
    .local v0, "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized sendData()V
    .locals 22

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/MQ;->object:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 71
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/MQ;->spName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lc8/hR;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 72
    .local v12, "set":Ljava/util/Set;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 73
    .local v8, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_1

    .line 137
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lc8/MQ;->isRunning:Z

    .line 69
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_1
    monitor-exit p0

    return-void

    .line 74
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lc8/MQ;->isInterruptThread:Z

    if-eqz v15, :cond_2

    .line 75
    monitor-exit v16

    goto :goto_1

    .line 69
    .end local v8    # "iterator":Ljava/util/Iterator;
    .end local v12    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v15

    monitor-exit p0

    throw v15

    .line 79
    .restart local v8    # "iterator":Ljava/util/Iterator;
    .restart local v12    # "set":Ljava/util/Set;
    :cond_2
    :try_start_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 80
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->context:Landroid/content/Context;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/MQ;->spName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 80
    move-object/from16 v0, v17

    invoke-static {v15, v0, v9}, Lc8/hR;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 82
    .local v14, "valueExpire":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->context:Landroid/content/Context;

    .line 83
    const-string/jumbo v17, "cn.com.mma.mobile.tracking.other"

    .line 82
    move-object/from16 v0, v17

    invoke-static {v15, v0, v9}, Lc8/hR;->getLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    .line 85
    move-object v4, v9

    .local v4, "data":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 86
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-lez v15, :cond_9

    .line 87
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->instance:Lc8/IQ;

    invoke-virtual {v15}, Lc8/IQ;->getHashSet()Ljava/util/HashSet;

    move-result-object v11

    .line 88
    .local v11, "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v11, :cond_4

    .line 89
    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-eqz v15, :cond_3

    .line 91
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 93
    :cond_3
    :try_start_6
    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/MQ;->sendMessage(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 97
    .local v7, "httpResponse":Lorg/apache/http/HttpResponse;
    if-nez v7, :cond_5

    .line 98
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v1, v2}, Lc8/MQ;->handleFailedResult(Ljava/lang/String;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 99
    :try_start_7
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 101
    :cond_5
    :try_start_8
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    .line 102
    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 106
    .local v13, "statueCode":I
    const/16 v15, 0xc8

    if-eq v13, v15, :cond_6

    .line 107
    const/16 v15, 0x12e

    if-eq v13, v15, :cond_6

    .line 108
    const/16 v15, 0x12d

    if-ne v13, v15, :cond_8

    .line 109
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->spName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Lc8/MQ;->handleSuccessResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/16 v15, 0x12e

    if-eq v13, v15, :cond_7

    .line 111
    const/16 v15, 0x12d

    if-ne v13, v15, :cond_0

    .line 113
    :cond_7
    const-string/jumbo v15, "Location"

    invoke-interface {v7, v15}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v6

    .line 114
    .local v6, "headers":[Lorg/apache/http/Header;
    if-eqz v6, :cond_0

    array-length v15, v6

    if-lez v15, :cond_0

    .line 115
    const/4 v15, 0x0

    aget-object v15, v6, v15

    .line 116
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 117
    .local v10, "redirectUrl":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->connectUtil:Lc8/ZQ;

    invoke-virtual {v15, v10}, Lc8/ZQ;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v4    # "data":Ljava/lang/String;
    .end local v6    # "headers":[Lorg/apache/http/Header;
    .end local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "redirectUrl":Ljava/lang/String;
    .end local v11    # "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "statueCode":I
    .end local v14    # "valueExpire":Ljava/lang/Long;
    :catch_0
    move-exception v5

    .line 134
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 123
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "data":Ljava/lang/String;
    .restart local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v13    # "statueCode":I
    .restart local v14    # "valueExpire":Ljava/lang/Long;
    :cond_8
    :try_start_a
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v9, v1, v2}, Lc8/MQ;->handleFailedResult(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 130
    .end local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v11    # "requestList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v13    # "statueCode":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/MQ;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/MQ;->spName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 129
    move-object/from16 v0, v17

    invoke-static {v15, v0, v9}, Lc8/hR;->removeFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method private sendMessage(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 9
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 151
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    :try_start_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 155
    .local v6, "method":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 156
    .local v2, "hp":Lorg/apache/http/params/HttpParams;
    const-string/jumbo v7, "http.connection.timeout"

    .line 157
    const/16 v8, 0x2710

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 156
    invoke-interface {v2, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 158
    const-string/jumbo v7, "http.socket.timeout"

    .line 159
    const/16 v8, 0x2710

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 158
    invoke-interface {v2, v7, v8}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 167
    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 169
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 170
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 169
    invoke-direct {v1, v7, v8}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    .line 171
    .local v1, "handler":Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    invoke-virtual {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 172
    new-instance v7, Lc8/LQ;

    invoke-direct {v7, p0}, Lc8/LQ;-><init>(Lc8/MQ;)V

    invoke-virtual {v4, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 186
    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 192
    .local v5, "httpResponse":Lorg/apache/http/HttpResponse;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 193
    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_0
    move-object v3, v4

    .line 196
    .end local v1    # "handler":Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
    .end local v2    # "hp":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v6    # "method":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_1
    :goto_0
    return-object v5

    .line 187
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const/4 v5, 0x0

    .line 190
    .restart local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    const-string/jumbo v7, "mma_result_error\u53d1\u9001\u5931\u8d25"

    invoke-static {v7}, Lc8/dR;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 193
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v7

    .line 192
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 193
    invoke-virtual {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 195
    :cond_2
    throw v7

    .line 191
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_2

    .line 187
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_1
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/MQ;->isInterruptThread:Z

    .line 51
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 52
    return-void
.end method

.method public declared-synchronized run()V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/MQ;->sendData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
