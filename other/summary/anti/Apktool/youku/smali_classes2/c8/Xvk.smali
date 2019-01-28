.class public Lc8/Xvk;
.super Lc8/ovk;
.source "UnicomMgr.java"


# static fields
.field private static service:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private mId:Ljava/lang/String;

.field private mQueryOrder:Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

.field private mUnicomTransformUrlStateEnum:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

.field private networkPhoneNumber:Ljava/lang/String;

.field private sInit:Z

.field private sTransformUrlSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    .line 52
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lc8/Xvk;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lc8/ovk;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Xvk;->sInit:Z

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xvk;->sTransformUrlSuccess:Z

    .line 48
    sget-object v0, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_UNSTART:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    iput-object v0, p0, Lc8/Xvk;->mUnicomTransformUrlStateEnum:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lc8/Xvk;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Xvk;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lc8/Xvk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lc8/Xvk;Ljava/lang/String;)Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    .locals 1
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/Xvk;->parseJsonResult(Ljava/lang/String;)Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/Xvk;Ljava/util/List;)Lcom/youku/phone/freeflow/unicom/bean/OrderProd;
    .locals 1
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lc8/Xvk;->getEffectivePrdeProd(Ljava/util/List;)Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/Xvk;Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;)V
    .locals 0
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lc8/Xvk;->syc(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;)V

    return-void
.end method

.method static synthetic access$402(Lc8/Xvk;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lc8/Xvk;->sInit:Z

    return p1
.end method

.method static synthetic access$500(Lc8/Xvk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;ILc8/Gvk;)V
    .locals 0
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/util/Map;
    .param p6, "x6"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "x7"    # I
    .param p8, "x8"    # Lc8/Gvk;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p8}, Lc8/Xvk;->getItemVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;ILc8/Gvk;)V

    return-void
.end method

.method static synthetic access$602(Lc8/Xvk;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lc8/Xvk;->sTransformUrlSuccess:Z

    return p1
.end method

.method static synthetic access$702(Lc8/Xvk;Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;)Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;
    .locals 0
    .param p0, "x0"    # Lc8/Xvk;
    .param p1, "x1"    # Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/Xvk;->mUnicomTransformUrlStateEnum:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    return-object p1
.end method

.method private getCacheDate()Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 332
    const-string/jumbo v2, "getCacheDate"

    invoke-virtual {p0, v2}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 334
    :try_start_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v2

    const-string/jumbo v4, "youku.free.flow.unicom.cache.date.key"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const-string/jumbo v2, "getCacheDate.json.null"

    invoke-virtual {p0, v2}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 343
    .end local v1    # "json":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 339
    .restart local v1    # "json":Ljava/lang/String;
    :cond_0
    const-class v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    invoke-static {v1, v2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    const-string/jumbo v2, "getCacheDate.json.exception"

    invoke-virtual {p0, v2}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    move-object v2, v3

    .line 343
    goto :goto_0
.end method

.method private getEffectivePrdeProd(Ljava/util/List;)Lcom/youku/phone/freeflow/unicom/bean/OrderProd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/youku/phone/freeflow/unicom/bean/OrderProd;",
            ">;)",
            "Lcom/youku/phone/freeflow/unicom/bean/OrderProd;"
        }
    .end annotation

    .prologue
    .local p1, "orderProdList":Ljava/util/List;, "Ljava/util/List<Lcom/youku/phone/freeflow/unicom/bean/OrderProd;>;"
    const/4 v6, 0x0

    .line 201
    const-string/jumbo v5, "getEffectivePrdeProd"

    invoke-virtual {p0, v5}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 202
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 229
    :goto_0
    return-object v5

    .line 205
    :cond_1
    const/4 v4, -0x1

    .line 206
    .local v4, "woIndex":I
    const/4 v1, -0x1

    .line 207
    .local v1, "commonlySmoothIndex":I
    const/4 v3, -0x1

    .line 209
    .local v3, "infiniteSmoothIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 211
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    iget-object v0, v5, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;->basicOperProdId:Ljava/lang/String;

    .line 212
    .local v0, "basicOperProdId":Ljava/lang/String;
    const-string/jumbo v5, "21156"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 213
    move v4, v2

    .line 209
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_3
    const-string/jumbo v5, "1161"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 215
    move v1, v2

    goto :goto_2

    .line 216
    :cond_4
    const-string/jumbo v5, "22201"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 217
    move v3, v2

    goto :goto_2

    .line 222
    .end local v0    # "basicOperProdId":Ljava/lang/String;
    :cond_5
    if-ltz v4, :cond_6

    .line 223
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    goto :goto_0

    .line 224
    :cond_6
    if-ltz v1, :cond_7

    .line 225
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    goto :goto_0

    .line 226
    :cond_7
    if-ltz v3, :cond_8

    .line 227
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/phone/freeflow/unicom/bean/OrderProd;

    goto :goto_0

    :cond_8
    move-object v5, v6

    .line 229
    goto :goto_0
.end method

.method private getItemVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;ILc8/Gvk;)V
    .locals 13
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "quality"    # Ljava/lang/String;
    .param p3, "videoName"    # Ljava/lang/String;
    .param p4, "videoUrl"    # Ljava/lang/String;
    .param p6, "countDownLatch"    # Ljava/util/concurrent/CountDownLatch;
    .param p7, "index"    # I
    .param p8, "callBack"    # Lc8/Gvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            "I",
            "Lc8/Gvk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 374
    .local p5, "woVideoUrls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/Xvk;->mUnicomTransformUrlStateEnum:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    sget-object v3, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_FAILED:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    if-ne v2, v3, :cond_0

    .line 376
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 414
    :goto_0
    return-void

    .line 379
    :cond_0
    if-nez p5, :cond_1

    const-string/jumbo v10, ""

    .line 380
    .local v10, "WoVideoUrl":Ljava/lang/String;
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lc8/Xvk;->replaceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, "encryptUrl":Ljava/lang/String;
    iget-object v2, p0, Lc8/Xvk;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lc8/Xvk;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 383
    .local v12, "phoneNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWoVideoUrl.encryptUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    new-instance v2, Lc8/Wvk;

    move-object v3, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p8

    move-object/from16 v7, p3

    move/from16 v8, p7

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lc8/Wvk;-><init>(Lc8/Xvk;Ljava/util/Map;Ljava/lang/String;Lc8/Gvk;Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object v7, v12

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lc8/jwk;->getChangerVideoUrl2FreeFlowUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Ivk;)V

    goto :goto_0

    .line 379
    .end local v10    # "WoVideoUrl":Ljava/lang/String;
    .end local v11    # "encryptUrl":Ljava/lang/String;
    .end local v12    # "phoneNumber":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v10, v2

    goto :goto_1

    .line 411
    .restart local v10    # "WoVideoUrl":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5206\u7247\u5df2\u8f6c\u6362\u6210\u529f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    const-string/jumbo v1, "getPhoneNumber \u83b7\u53d6\u8054\u901a\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.unicom.cache.id.key"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPhoneNumber \u83b7\u53d6\u7f13\u5b58\u53f7\u7801\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPhoneNumber \u83b7\u53d6\u7f13\u5b58\u53f7\u7801\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    move-object v1, v0

    .line 502
    :goto_0
    return-object v1

    .line 488
    :cond_0
    iget-object v1, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPhoneNumber \u83b7\u53d6\u7f51\u7edc\u53f7\u7801\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {p1}, Lc8/pwk;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 495
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPhoneNumber \u83b7\u53d6sim\u5361\u8054\u901a\u624b\u673a\u53f7\u7801\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getPhoneNumber \u83b7\u53d6sim\u5361\u8054\u901a\u624b\u673a\u53f7\u7801\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    move-object v1, v0

    .line 498
    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 502
    goto :goto_0
.end method

.method private parseJsonResult(Ljava/lang/String;)Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 457
    const-string/jumbo v3, "parseJsonResult"

    invoke-virtual {p0, v3}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 458
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 467
    :goto_0
    return-object v1

    .line 462
    :cond_0
    :try_start_0
    const-class v3, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    invoke-static {p1, v3}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    .line 463
    .local v1, "queryOrder":Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    const-string/jumbo v3, "parseJsonResult.parseSuccess"

    invoke-virtual {p0, v3}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v1    # "queryOrder":Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 467
    goto :goto_0
.end method

.method private quertPhoneNumber()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "quertPhoneNuber"

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lc8/Rvk;

    invoke-direct {v0, p0}, Lc8/Rvk;-><init>(Lc8/Xvk;)V

    invoke-static {v0}, Lc8/jwk;->getUnicomPhoneNumber(Lc8/Jvk;)V

    .line 98
    return-void
.end method

.method private queryRelateShip(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lc8/Xvk;->getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "numberStr":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lc8/Xvk;->queryRelateShip(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private replaceUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 429
    .end local p1    # "url":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 419
    .restart local p1    # "url":Ljava/lang/String;
    :cond_0
    move-object v2, p1

    .line 420
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v4, "&userid="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 421
    .local v1, "start":I
    if-ltz v1, :cond_1

    .line 422
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 423
    const-string/jumbo v4, "&"

    add-int/lit8 v5, v1, 0x7

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 424
    .local v0, "end":I
    if-ltz v0, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "str1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "end":I
    .end local v3    # "str1":Ljava/lang/String;
    :cond_1
    move-object p1, v2

    .line 429
    goto :goto_0
.end method

.method private savaCache(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "queryOrder"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    .prologue
    .line 306
    const-string/jumbo v1, "savaCache \u7f13\u5b58\u8054\u901a\u624b\u673a\u53f7\u548c\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p1}, Lc8/Xvk;->savaCachePhoneNumber(Ljava/lang/String;)V

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "json":Ljava/lang/String;
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.unicom.cache.date.key"

    invoke-virtual {v1, v2, v0}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v1, "savaCache \u7f13\u5b58\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 316
    .end local v0    # "json":Ljava/lang/String;
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.unicom.cache.date.key"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v1, "savaCache \u6e05\u7a7a\u8ba2\u8d2d\u5173\u7cfb\u6210\u529f"

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private syc(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "queryOrder"    # Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    .prologue
    .line 290
    const-string/jumbo v0, "syc \u540c\u6b65\u8054\u901a\u8ba2\u8d2d\u5173\u7cfb\u548c\u624b\u673a\u53f7\u7801"

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lc8/Xvk;->mId:Ljava/lang/String;

    .line 292
    iput-object p2, p0, Lc8/Xvk;->mQueryOrder:Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    .line 294
    invoke-direct {p0, p1, p2}, Lc8/Xvk;->savaCache(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;)V

    .line 296
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lc8/tvk;->sycUnicomDate(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;I)V

    .line 297
    return-void
.end method


# virtual methods
.method public getCacheID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    const-string/jumbo v1, "getCacheID"

    invoke-virtual {p0, v1}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "api_chinaunicom_number"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "oldCache":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lc8/Xvk;->savaCachePhoneNumber(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "api_chinaunicom_number"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v1

    const-string/jumbo v2, "youku.free.flow.unicom.cache.id.key"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lc8/nvk;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const-string/jumbo v0, "Unicom"

    return-object v0
.end method

.method public getVideoOrAdUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Runnable;ZLc8/Gvk;)V
    .locals 15
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "quality"    # Ljava/lang/String;
    .param p3, "videoName"    # Ljava/lang/String;
    .param p6, "runnable"    # Ljava/lang/Runnable;
    .param p7, "isSync"    # Z
    .param p8, "callBack"    # Lc8/Gvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z",
            "Lc8/Gvk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p4, "videoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "woVideoUrls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 240
    .local v9, "countDownLatch":Ljava/util/concurrent/CountDownLatch;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v13

    .line 241
    .local v13, "size":I
    sget-object v1, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_UNSTART:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    iput-object v1, p0, Lc8/Xvk;->mUnicomTransformUrlStateEnum:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 242
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v13, :cond_2

    .line 243
    move v7, v12

    .line 244
    .local v7, "index":I
    sget-object v14, Lc8/Xvk;->service:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lc8/Uvk;

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lc8/Uvk;-><init>(Lc8/Xvk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/concurrent/CountDownLatch;Lc8/Gvk;)V

    invoke-virtual {v14, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 242
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 251
    .end local v7    # "index":I
    :cond_2
    if-eqz p7, :cond_3

    .line 253
    :try_start_0
    invoke-virtual {v9}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v11

    .line 255
    .local v11, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 258
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lc8/Vvk;

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v9, v0}, Lc8/Vvk;-><init>(Lc8/Xvk;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 60
    const-string/jumbo v0, "init \u8054\u901a\u521d\u59cb\u5316..."

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 61
    iget-boolean v0, p0, Lc8/Xvk;->sInit:Z

    if-eqz v0, :cond_1

    .line 62
    const-string/jumbo v0, "init.startIng... \u8054\u901a\u6b63\u5728\u521d\u59cb\u5316\u4e2d\uff0c\u62d2\u7edd\u540c\u65f6\u8fdb\u884c\u591a\u6b21\u521d\u59cb\u5316..."

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xvk;->sInit:Z

    .line 66
    invoke-virtual {p0}, Lc8/Xvk;->initCache()V

    .line 67
    iget-object v0, p0, Lc8/Xvk;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lc8/Xvk;->queryRelateShip(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lc8/owk;->SDKSTART:Ljava/lang/String;

    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    :cond_2
    invoke-direct {p0}, Lc8/Xvk;->quertPhoneNumber()V

    .line 71
    :cond_3
    iget-object v0, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/Xvk;->networkPhoneNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/Xvk;->queryAliCard(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initCache()V
    .locals 4

    .prologue
    .line 279
    const-string/jumbo v0, "initCache \u8054\u901a\u521d\u59cb\u5316\u7f13\u5b58"

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lc8/Xvk;->getCacheID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Xvk;->mId:Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Lc8/Xvk;->getCacheDate()Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    move-result-object v0

    iput-object v0, p0, Lc8/Xvk;->mQueryOrder:Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    .line 283
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v0

    iget-object v1, p0, Lc8/Xvk;->mId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xvk;->mQueryOrder:Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lc8/tvk;->sycUnicomDate(Ljava/lang/String;Lcom/youku/phone/freeflow/unicom/bean/UnicomQueryOrderBean;I)V

    .line 284
    return-void
.end method

.method public isTransformUrlSuccess()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lc8/Xvk;->sTransformUrlSuccess:Z

    return v0
.end method

.method public queryAliCard(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Lc8/Svk;

    invoke-direct {v0, p0}, Lc8/Svk;-><init>(Lc8/Xvk;)V

    invoke-static {p1, v0}, Lc8/jwk;->getAliCardRelateShip(Ljava/lang/String;Lc8/Evk;)V

    .line 133
    return-void
.end method

.method public queryRelateShip(Ljava/lang/String;)V
    .locals 1
    .param p1, "numberStr"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Xvk;->queryRelateShip(Ljava/lang/String;Lc8/Ivk;)V

    .line 117
    return-void
.end method

.method public queryRelateShip(Ljava/lang/String;Lc8/Ivk;)V
    .locals 2
    .param p1, "numberStr"    # Ljava/lang/String;
    .param p2, "netCallBack"    # Lc8/Ivk;

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryRelateShip \u8054\u901a: \u67e5\u8be2\u8ba2\u8d2d\u5173\u7cfb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 144
    new-instance v0, Lc8/Tvk;

    invoke-direct {v0, p0, p2, p1}, Lc8/Tvk;-><init>(Lc8/Xvk;Lc8/Ivk;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc8/jwk;->getUnicomRelateShip(Ljava/lang/String;Lc8/Ivk;)V

    .line 192
    return-void
.end method

.method public savaCachePhoneNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "savaCachePhoneNumber \u7f13\u5b58\u624b\u673a\u53f7\u7801:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Xvk;->debugLog(Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lc8/nvk;->getInstance()Lc8/nvk;

    move-result-object v0

    const-string/jumbo v1, "youku.free.flow.unicom.cache.id.key"

    invoke-virtual {v0, v1, p1}, Lc8/nvk;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
