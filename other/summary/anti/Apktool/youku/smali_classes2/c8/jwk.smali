.class public Lc8/jwk;
.super Ljava/lang/Object;
.source "NetMgr.java"


# static fields
.field private static client:Lc8/QSe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Lc8/QSe;

    invoke-direct {v0}, Lc8/QSe;-><init>()V

    sput-object v0, Lc8/jwk;->client:Lc8/QSe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAliCardRelateShip(Ljava/lang/String;Lc8/Evk;)V
    .locals 4
    .param p0, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/Evk",
            "<",
            "Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "callback":Lc8/Evk;, "Lcom/youku/phone/freeflow/callback/BeanCallBack<Lcom/youku/phone/freeflow/unicom/bean/UnicomResult;>;"
    :try_start_0
    invoke-static {p0}, Lc8/nwk;->getUnicomQueryFreeflowUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8054\u901a:\u8bf7\u6c42\u662f\u8ba2\u8d2d\u5173\u7cfb\u63a5\u53e3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    new-instance v2, Lc8/bJj;

    invoke-direct {v2}, Lc8/bJj;-><init>()V

    invoke-virtual {v2, v0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 162
    .local v1, "ykNetwork":Lc8/cJj;
    new-instance v2, Lc8/ewk;

    invoke-direct {v2, p1}, Lc8/ewk;-><init>(Lc8/Evk;)V

    invoke-virtual {v1, v2}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getChangerVideoUrl2FreeFlowUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Ivk;)V
    .locals 18
    .param p0, "vid"    # Ljava/lang/String;
    .param p1, "quality"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;
    .param p3, "videoUrl"    # Ljava/lang/String;
    .param p4, "phoneNumber"    # Ljava/lang/String;
    .param p5, "callback"    # Lc8/Ivk;

    .prologue
    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 191
    .local v6, "startTime":J
    invoke-static/range {p2 .. p4}, Lc8/nwk;->getUnicomVideoUrl2FreeFlowUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    if-eqz p5, :cond_0

    .line 196
    const-string/jumbo v2, "Exception:"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 197
    const/16 v5, -0x3e8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lc8/owk;->changeVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8054\u901a:\u8bf7\u6c42\u514d\u6d41\u89c6\u9891\u5730\u5740: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    sget-object v2, Lc8/jwk;->client:Lc8/QSe;

    const-wide/16 v16, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v3}, Lc8/QSe;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 204
    sget-object v2, Lc8/jwk;->client:Lc8/QSe;

    const-wide/16 v16, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1, v3}, Lc8/QSe;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 205
    sget-object v2, Lc8/jwk;->client:Lc8/QSe;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/QSe;->setFollowRedirects(Z)V

    .line 206
    new-instance v2, Lc8/USe;

    invoke-direct {v2}, Lc8/USe;-><init>()V

    invoke-virtual {v2, v4}, Lc8/USe;->url(Ljava/lang/String;)Lc8/USe;

    move-result-object v13

    .line 207
    .local v13, "requestBuilder":Lc8/USe;
    invoke-virtual {v13}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v12

    .line 208
    .local v12, "request":Lc8/VSe;
    sget-object v2, Lc8/jwk;->client:Lc8/QSe;

    invoke-virtual {v2, v12}, Lc8/QSe;->newCall(Lc8/VSe;)Lc8/mSe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/mSe;->execute()Lc8/cTe;

    move-result-object v14

    .line 209
    .local v14, "response":Lc8/cTe;
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v14}, Lc8/cTe;->code()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 210
    invoke-virtual {v14}, Lc8/cTe;->body()Lc8/dTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/dTe;->bytes()[B

    move-result-object v10

    .line 211
    .local v10, "recvBuf":[B
    if-eqz v10, :cond_2

    array-length v2, v10

    if-eqz v2, :cond_2

    .line 212
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 213
    .local v11, "recvData":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 214
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .local v9, "object":Lorg/json/JSONObject;
    const-string/jumbo v2, "url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 216
    if-eqz p5, :cond_2

    .line 217
    const-string/jumbo v2, "url"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lc8/Ivk;->onSuccess(Ljava/lang/String;)V

    .line 218
    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lc8/owk;->changeVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    .end local v9    # "object":Lorg/json/JSONObject;
    .end local v10    # "recvBuf":[B
    .end local v11    # "recvData":Ljava/lang/String;
    .end local v12    # "request":Lc8/VSe;
    .end local v13    # "requestBuilder":Lc8/USe;
    .end local v14    # "response":Lc8/cTe;
    :catch_0
    move-exception v8

    .line 233
    .local v8, "e":Ljava/lang/Exception;
    if-eqz p5, :cond_0

    .line 234
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    const-string/jumbo v2, "Exception:"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 236
    const/16 v5, -0x3e8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lc8/owk;->changeVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 237
    const-string/jumbo v2, "getChangerVideoUrl2FreeFlowUrl exception"

    invoke-static {v2}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "request":Lc8/VSe;
    .restart local v13    # "requestBuilder":Lc8/USe;
    .restart local v14    # "response":Lc8/cTe;
    :cond_2
    if-eqz p5, :cond_0

    .line 227
    :try_start_1
    const-string/jumbo v2, "Exception"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    .line 229
    const/16 v5, -0x3ea

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lc8/owk;->changeVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 230
    const-string/jumbo v2, "getChangerVideoUrl2FreeFlowUrl -1002"

    invoke-static {v2}, Lc8/pwk;->errorLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getMobilePcid(Ljava/lang/String;Lc8/Hvk;)V
    .locals 4
    .param p0, "urlEncoded"    # Ljava/lang/String;
    .param p1, "callback"    # Lc8/Hvk;

    .prologue
    .line 312
    move-object v0, p0

    .line 313
    .local v0, "url":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    new-instance v2, Lc8/bJj;

    invoke-direct {v2}, Lc8/bJj;-><init>()V

    invoke-virtual {v2, v0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 316
    .local v1, "ykNetwork":Lc8/cJj;
    new-instance v2, Lc8/gwk;

    invoke-direct {v2, p1}, Lc8/gwk;-><init>(Lc8/Hvk;)V

    invoke-virtual {v1, v2}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v1    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v2

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p1, v2}, Lc8/Hvk;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMobilePcidToRestData(Lc8/Hvk;)V
    .locals 4
    .param p0, "callback"    # Lc8/Hvk;

    .prologue
    .line 249
    :try_start_0
    invoke-static {}, Lc8/nwk;->getMobileUrlAndParameters()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u4f2a\u7801\u94fe\u63a5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    new-instance v2, Lc8/bJj;

    invoke-direct {v2}, Lc8/bJj;-><init>()V

    invoke-virtual {v2, v0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 253
    .local v1, "ykNetwork":Lc8/cJj;
    new-instance v2, Lc8/fwk;

    invoke-direct {v2, p0}, Lc8/fwk;-><init>(Lc8/Hvk;)V

    invoke-virtual {v1, v2}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v2

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p0, v2}, Lc8/Hvk;->onBreak(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMobileProductsAndRestData(Ljava/lang/String;Lc8/Ivk;)V
    .locals 4
    .param p0, "pseudocode"    # Ljava/lang/String;
    .param p1, "callback"    # Lc8/Ivk;

    .prologue
    .line 367
    :try_start_0
    invoke-static {p0}, Lc8/nwk;->getMobileProductsAndRestData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u79fb\u52a8:\u8bf7\u6c42\u83b7\u53d6\u8ba2\u8d2d\u5173\u7cfb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    new-instance v2, Lc8/bJj;

    invoke-direct {v2}, Lc8/bJj;-><init>()V

    invoke-virtual {v2, v0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 371
    .local v1, "ykNetwork":Lc8/cJj;
    new-instance v2, Lc8/hwk;

    invoke-direct {v2, p1}, Lc8/hwk;-><init>(Lc8/Ivk;)V

    invoke-virtual {v1, v2}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v2

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {p1, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getTelecomResult(Lc8/Ivk;)V
    .locals 4
    .param p0, "callBack"    # Lc8/Ivk;

    .prologue
    .line 402
    :try_start_0
    invoke-static {}, Lc8/nwk;->getTelecomResult()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Lc8/bJj;

    invoke-direct {v2}, Lc8/bJj;-><init>()V

    invoke-virtual {v2, v0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 404
    .local v1, "ykNetwork":Lc8/cJj;
    new-instance v2, Lc8/iwk;

    invoke-direct {v2, p0}, Lc8/iwk;-><init>(Lc8/Ivk;)V

    invoke-virtual {v1, v2}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v2

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {p0, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUnicomPhoneNumber(Lc8/Jvk;)V
    .locals 5
    .param p0, "callback"    # Lc8/Jvk;

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Lc8/nwk;->getUnicomPhoneNumberUrl()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "function"

    const-string/jumbo v4, "2"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v3, "pip"

    invoke-static {}, Lc8/pwk;->getIP()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v3, Lc8/bJj;

    invoke-direct {v3}, Lc8/bJj;-><init>()V

    invoke-virtual {v3, v1}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v3

    const-string/jumbo v4, "GET"

    invoke-virtual {v3, v4}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/bJj;->params(Ljava/util/Map;)Lc8/bJj;

    move-result-object v3

    invoke-virtual {v3}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v2

    .line 61
    .local v2, "ykNetwork":Lc8/cJj;
    new-instance v3, Lc8/cwk;

    invoke-direct {v3, p0, v1}, Lc8/cwk;-><init>(Lc8/Jvk;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v3

    const-string/jumbo v3, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p0, v3}, Lc8/Jvk;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUnicomRelateShip(Ljava/lang/String;Lc8/Ivk;)V
    .locals 4
    .param p0, "numberStr"    # Ljava/lang/String;
    .param p1, "callback"    # Lc8/Ivk;

    .prologue
    .line 122
    :try_start_0
    invoke-static {p0}, Lc8/nwk;->getUnicomQueryRelateShipUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u8054\u901a:\u8bf7\u6c42\u662f\u8ba2\u8d2d\u5173\u7cfb\u63a5\u53e3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    new-instance v2, Lc8/bJj;

    invoke-direct {v2}, Lc8/bJj;-><init>()V

    invoke-virtual {v2, v0}, Lc8/bJj;->url(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    const-string/jumbo v3, "GET"

    invoke-virtual {v2, v3}, Lc8/bJj;->method(Ljava/lang/String;)Lc8/bJj;

    move-result-object v2

    invoke-virtual {v2}, Lc8/bJj;->build()Lc8/cJj;

    move-result-object v1

    .line 127
    .local v1, "ykNetwork":Lc8/cJj;
    new-instance v2, Lc8/dwk;

    invoke-direct {v2, p1}, Lc8/dwk;-><init>(Lc8/Ivk;)V

    invoke-virtual {v1, v2}, Lc8/cJj;->asyncUICall(Lc8/OIj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "ykNetwork":Lc8/cJj;
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v2

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-interface {p1, v2}, Lc8/Ivk;->onFail(Ljava/lang/String;)V

    goto :goto_0
.end method
