.class public Lc8/YMf;
.super Ljava/lang/Object;
.source "MtopJSBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VMf;,
        Lc8/XMf;
    }
.end annotation


# static fields
.field private static final AUTO_LOGIN_ONLY:Ljava/lang/String; = "AutoLoginOnly"

.field private static final AUTO_LOGIN_WITH_MANUAL:Ljava/lang/String; = "AutoLoginAndManualLogin"

.field private static final DATA_TYPE_JSON:Ljava/lang/String; = "json"

.field private static final DATA_TYPE_ORIGINAL_JSON:Ljava/lang/String; = "originaljson"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopJSBridge"

.field private static volatile scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lc8/YMf;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static buildMtopBusiness(Ljava/util/Map;)Lc8/GMf;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/GMf;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "jsParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v15, 0x0

    .line 194
    .local v15, "mtopBusiness":Lc8/GMf;
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 196
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v25, "api"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "api":Ljava/lang/String;
    const-string/jumbo v25, "v"

    const-string/jumbo v26, "*"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 199
    .local v23, "v":Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "{}"

    .line 201
    .local v3, "data":Ljava/lang/String;
    const-string/jumbo v25, "data"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 202
    .local v5, "dataParam":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 203
    new-instance v4, Ljava/util/HashMap;

    .end local v4    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 204
    .restart local v4    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 205
    .local v10, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 206
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 207
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    .line 208
    .local v24, "value":Ljava/lang/Object;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v4, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v25, v0

    if-nez v25, :cond_0

    move-object/from16 v0, v24

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 211
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v5, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v2    # "api":Ljava/lang/String;
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "dataParam":Lorg/json/JSONObject;
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v23    # "v":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 290
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v25, "mtopsdk.MtopJSBridge"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "parse mtop jsParamMap error, jsParamMap="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v15

    .line 214
    .restart local v2    # "api":Ljava/lang/String;
    .restart local v3    # "data":Ljava/lang/String;
    .restart local v4    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "dataParam":Lorg/json/JSONObject;
    .restart local v10    # "it":Ljava/util/Iterator;
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v23    # "v":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .end local v10    # "it":Ljava/util/Iterator;
    :cond_2
    const-string/jumbo v25, "needLogin"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 218
    .local v17, "needLogin":Z
    const-string/jumbo v25, "sessionOption"

    const-string/jumbo v26, "AutoLoginAndManualLogin"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 220
    .local v20, "sessionOption":Ljava/lang/String;
    new-instance v16, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct/range {v16 .. v16}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 221
    .local v16, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {v16 .. v17}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 224
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, v16

    iput-object v4, v0, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 228
    invoke-static/range {v16 .. v16}, Lc8/GMf;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/GMf;

    move-result-object v15

    .line 229
    const-string/jumbo v25, "AutoLoginOnly"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_8

    const/16 v25, 0x1

    :goto_2
    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lc8/GMf;->showLoginUI(Z)Lc8/GMf;

    .line 231
    const-string/jumbo v25, "method"

    const-string/jumbo v26, "GET"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "method":Ljava/lang/String;
    sget-object v25, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual/range {v25 .. v25}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 233
    sget-object v25, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lc8/GMf;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/GMf;

    .line 237
    :cond_3
    const-string/jumbo v25, "secType"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 238
    .local v19, "secType":I
    if-lez v19, :cond_4

    .line 239
    invoke-virtual {v15}, Lc8/GMf;->useWua()Lc8/GMf;

    .line 243
    :cond_4
    const-string/jumbo v25, "dataType"

    const-string/jumbo v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    .local v6, "dataType":Ljava/lang/String;
    invoke-static {v6}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    const-string/jumbo v25, "json"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    const-string/jumbo v25, "originaljson"

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 245
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lmtopsdk/mtop/domain/JsonTypeEnum;->valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/JsonTypeEnum;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lc8/GMf;->setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/GMf;

    .line 249
    :cond_6
    const/4 v9, 0x0

    .line 250
    .local v9, "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v25, "ext_headers"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 251
    .local v8, "ext_headers":Lorg/json/JSONObject;
    if-eqz v8, :cond_9

    .line 252
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 253
    .restart local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    .line 254
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 255
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 256
    .restart local v13    # "key":Ljava/lang/String;
    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 257
    .local v24, "value":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_7

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 260
    move-object/from16 v0, v24

    invoke-interface {v9, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 229
    .end local v6    # "dataType":Ljava/lang/String;
    .end local v8    # "ext_headers":Lorg/json/JSONObject;
    .end local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "method":Ljava/lang/String;
    .end local v19    # "secType":I
    .end local v24    # "value":Ljava/lang/String;
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 266
    .restart local v6    # "dataType":Ljava/lang/String;
    .restart local v8    # "ext_headers":Lorg/json/JSONObject;
    .restart local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v14    # "method":Ljava/lang/String;
    .restart local v19    # "secType":I
    :cond_9
    const-string/jumbo v25, "user-agent"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 267
    .local v22, "userAgent":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 268
    if-nez v9, :cond_a

    .line 269
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 271
    .restart local v9    # "headerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    const-string/jumbo v25, "user-agent"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_b
    invoke-virtual {v15, v9}, Lc8/GMf;->headers(Ljava/util/Map;)Lc8/GMf;

    .line 276
    const-string/jumbo v25, "ttid"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 277
    .local v21, "ttid":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 278
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lc8/GMf;->ttid(Ljava/lang/String;)Lc8/GMf;

    .line 282
    :cond_c
    const-string/jumbo v25, "pageUrl"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 283
    .local v18, "pageUrl":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 284
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lc8/GMf;->setPageUrl(Ljava/lang/String;)Lc8/GMf;

    .line 287
    :cond_d
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Lc8/GMf;->setReqSource(I)Lc8/GMf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private static getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lc8/YMf;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 303
    const-class v1, Lc8/YMf;

    monitor-enter v1

    .line 304
    :try_start_0
    sget-object v0, Lc8/YMf;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lc8/YMf;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 307
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_1
    sget-object v0, Lc8/YMf;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static sendMtopRequest(Ljava/util/Map;Lc8/AMf;)V
    .locals 9
    .param p1, "listener"    # Lc8/AMf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/AMf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "jsParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string/jumbo v4, "mtopsdk.MtopJSBridge"

    const-string/jumbo v5, "illegal param listener."

    invoke-static {v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 147
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    :cond_1
    const-string/jumbo v4, "mtopsdk.MtopJSBridge"

    const-string/jumbo v5, "illegal param jsParamMap."

    invoke-static {v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v4, "ANDROID_SYS_ILLEGAL_JSPARAM_ERROR"

    const-string/jumbo v5, "MTOP JSBridge \u53c2\u6570\u9519\u8bef"

    invoke-direct {v2, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v2, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-interface {p1, v6, v2, v7}, Lc8/AMf;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    invoke-static {p0}, Lc8/YMf;->buildMtopBusiness(Ljava/util/Map;)Lc8/GMf;

    move-result-object v1

    .line 155
    .local v1, "mtopBusiness":Lc8/GMf;
    if-nez v1, :cond_3

    .line 156
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v4, "ANDROID_SYS_PARSE_JSPARAM_ERROR"

    const-string/jumbo v5, "MTOP JSBridge \u53c2\u6570\u89e3\u6790\u9519\u8bef"

    invoke-direct {v2, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .restart local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-interface {p1, v6, v2, v7}, Lc8/AMf;->onSystemError(ILmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Object;)V

    goto :goto_0

    .line 162
    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_3
    const/16 v3, 0x4e20

    .line 164
    .local v3, "timeout":I
    :try_start_0
    const-string/jumbo v4, "timeout"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 165
    if-gez v3, :cond_5

    .line 166
    const/16 v3, 0x4e20

    .line 174
    :cond_4
    :goto_1
    new-instance v0, Lc8/VMf;

    invoke-direct {v0, v1, p1}, Lc8/VMf;-><init>(Lc8/GMf;Lc8/AMf;)V

    .line 175
    .local v0, "jsListener":Lc8/VMf;
    invoke-virtual {v1, v0}, Lc8/GMf;->registerListener(Lc8/CMf;)Lc8/GMf;

    .line 176
    invoke-virtual {v1}, Lc8/GMf;->startRequest()V

    .line 178
    invoke-static {}, Lc8/YMf;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v4

    new-instance v5, Lc8/RMf;

    invoke-direct {v5, v0}, Lc8/RMf;-><init>(Lc8/VMf;)V

    int-to-long v6, v3

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7, v8}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 167
    .end local v0    # "jsListener":Lc8/VMf;
    :cond_5
    const v4, 0xea60

    if-le v3, v4, :cond_4

    .line 168
    const v3, 0xea60

    goto :goto_1

    .line 171
    :catch_0
    move-exception v4

    const-string/jumbo v4, "mtopsdk.MtopJSBridge"

    const-string/jumbo v5, "parse timeout (jsParam field) error."

    invoke-static {v4, v5}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
