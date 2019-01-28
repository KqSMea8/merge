.class public Lc8/jvk;
.super Ljava/lang/Object;
.source "FollowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fvk;,
        Lc8/gvk;,
        Lc8/hvk;,
        Lc8/ivk;,
        Lc8/evk;,
        Lcom/youku/phone/follow/manager/FollowManager$RequestError;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_ADD_FOLLOW:Ljava/lang/String; = "com.youku.action.ADD_FOLLOW"

.field public static final ACTION_CANCEL_FOLLOW:Ljava/lang/String; = "com.youku.action.CANCEL_FOLLOW"

.field public static final ACTION_FOLLOW_BATCH_CANCEL:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.trackershow.batchCancel"

.field public static final ACTION_FOLLOW_CANCEL:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.trackershow.cancel"

.field public static final ACTION_FOLLOW_CREATE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.trackershow.create"

.field public static final ACTION_FOLLOW_HAS_SHOWS:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.trackershow.hasShows"

.field public static final ACTION_FOLLOW_IS_SUBSCRIBE_SHOW:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.trackershow.isSubscribeShow"

.field public static final ACTION_FOLLOW_MERGE_SHOW:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.trackershow.mergeShow"

.field private static final CONN_TIMEOUT:I = 0x1388

.field public static final EXTRA_FOLLOW_SID:Ljava/lang/String; = "sid"

.field public static final EXTRA_FOLLOW_UID:Ljava/lang/String; = "uid"

.field public static final JSON_KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_SID:Ljava/lang/String; = "showid"

.field public static final KEY_SIDS:Ljava/lang/String; = "showids"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final NEED_CODE:Z = false

.field private static final SOCKET_TIMEOUT:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "FollowManager"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static mMtop:Lc8/AOp;

.field private static sInstance:Lc8/jvk;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "INNER"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    sput-object v0, Lc8/jvk;->mMtop:Lc8/AOp;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/jvk;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lc8/jvk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/jvk;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/jvk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lc8/jvk;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/jvk;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lc8/jvk;->sendFollowBroadcast(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 6
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/domain/MtopRequest;"
        }
    .end annotation

    .prologue
    .line 537
    .local p4, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 538
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v3, p1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 539
    const-string/jumbo v4, "1.0"

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 540
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 542
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 543
    .local v0, "apiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "uid"

    invoke-virtual {v0, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string/jumbo v4, "did"

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string/jumbo v4, "showid"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v2, "idBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 552
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ids = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    const-string/jumbo v4, "showids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    .end local v2    # "idBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {v0}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 558
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/jvk;
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lc8/jvk;->sInstance:Lc8/jvk;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lc8/jvk;

    invoke-direct {v0, p0}, Lc8/jvk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/jvk;->sInstance:Lc8/jvk;

    .line 76
    :cond_0
    sget-object v0, Lc8/jvk;->sInstance:Lc8/jvk;

    return-object v0
.end method

.method private getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;
    .locals 3
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    const/16 v2, 0x1388

    .line 562
    sget-object v0, Lc8/jvk;->mMtop:Lc8/AOp;

    invoke-static {}, Lc8/Iin;->getTTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lc8/AOp;->build(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)Lc8/COp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc8/COp;->setConnectionTimeoutMilliSecond(I)Lc8/COp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc8/COp;->setSocketTimeoutMilliSecond(I)Lc8/COp;

    move-result-object v0

    return-object v0
.end method

.method private sendFollowBroadcast(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "addFollow"    # Z
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;

    .prologue
    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFollowBroadcast addFollow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; showId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.youku.action.ADD_FOLLOW"

    .line 569
    .local v0, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 570
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 572
    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    iget-object v3, p0, Lc8/jvk;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 567
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "com.youku.action.CANCEL_FOLLOW"

    goto :goto_0

    .line 575
    .restart local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addOrCancelFollow(ZLjava/lang/String;ZLc8/evk;)V
    .locals 6
    .param p1, "addFollow"    # Z
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "showToast"    # Z
    .param p4, "listener"    # Lc8/evk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/jvk;->addOrCancelFollow(ZLjava/lang/String;ZZLc8/evk;)V

    .line 120
    return-void
.end method

.method public addOrCancelFollow(ZLjava/lang/String;ZZLc8/evk;)V
    .locals 13
    .param p1, "addFollow"    # Z
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "asyncRequest"    # Z
    .param p4, "showToast"    # Z
    .param p5, "listener"    # Lc8/evk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    if-nez p5, :cond_0

    .line 231
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    if-eqz p4, :cond_1

    .line 130
    sget v1, Lcom/youku/phone/R$string;->tip_no_network:I

    invoke-static {v1}, Lc8/nzk;->showTips(I)V

    .line 134
    :cond_1
    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lc8/evk;->onAddOrCancelFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_0

    .line 138
    :cond_2
    const-class v1, Lc8/vdn;

    invoke-static {v1}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vdn;

    invoke-interface {v1}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "uid":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 142
    const-string/jumbo v8, "mtop.tudou.subscribe.service.subscribe.trackershow.create"

    .line 147
    .local v8, "apiName":Ljava/lang/String;
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v8, p2, v6, v1}, Lc8/jvk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v11

    .line 149
    .local v11, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOrCancelFollow, apiName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; showId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    :try_start_0
    invoke-direct {p0, v11}, Lc8/jvk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v12

    new-instance v1, Lc8/Zuk;

    move-object v2, p0

    move/from16 v3, p4

    move v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lc8/Zuk;-><init>(Lc8/jvk;ZZLjava/lang/String;Ljava/lang/String;Lc8/evk;)V

    invoke-virtual {v12, v1}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v9

    .line 219
    .local v9, "builder":Lc8/COp;
    if-eqz p3, :cond_4

    .line 220
    invoke-virtual {v9}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v9    # "builder":Lc8/COp;
    :catch_0
    move-exception v10

    .line 225
    .local v10, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addOrCancelFollow, Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    sget-object v1, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Lc8/evk;->onAddOrCancelFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto/16 :goto_0

    .line 144
    .end local v8    # "apiName":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_3
    const-string/jumbo v8, "mtop.tudou.subscribe.service.subscribe.trackershow.cancel"

    .restart local v8    # "apiName":Ljava/lang/String;
    goto :goto_1

    .line 222
    .restart local v9    # "builder":Lc8/COp;
    .restart local v11    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_4
    :try_start_1
    invoke-virtual {v9}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public batchCancelFollow(Ljava/util/List;Lc8/fvk;)V
    .locals 1
    .param p2, "listener"    # Lc8/fvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lc8/fvk;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lc8/jvk;->batchCancelFollow(Ljava/util/List;ZLc8/fvk;)V

    .line 459
    return-void
.end method

.method public batchCancelFollow(Ljava/util/List;ZLc8/fvk;)V
    .locals 7
    .param p2, "asyncRequest"    # Z
    .param p3, "listener"    # Lc8/fvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lc8/fvk;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-class v5, Lc8/vdn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/vdn;

    invoke-interface {v5}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, "uid":Ljava/lang/String;
    const-string/jumbo v0, "mtop.tudou.subscribe.service.subscribe.trackershow.batchCancel"

    .line 470
    .local v0, "apiName":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-direct {p0, v0, v5, v4, p1}, Lc8/jvk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    .line 472
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "batchCancelFollow, apiName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; showIds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    :try_start_0
    invoke-direct {p0, v3}, Lc8/jvk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v5

    new-instance v6, Lc8/dvk;

    invoke-direct {v6, p0, v4, p3, p1}, Lc8/dvk;-><init>(Lc8/jvk;Ljava/lang/String;Lc8/fvk;Ljava/util/List;)V

    invoke-virtual {v5, v6}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v1

    .line 525
    .local v1, "builder":Lc8/COp;
    if-eqz p2, :cond_2

    .line 526
    invoke-virtual {v1}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    .end local v1    # "builder":Lc8/COp;
    :catch_0
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "batchCancelFollow, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {p3, p1, v5}, Lc8/fvk;->OnBatchCancelFollowFail(Ljava/util/List;Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_0

    .line 528
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Lc8/COp;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public checkFollowed(Ljava/lang/String;Lc8/hvk;)V
    .locals 1
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/hvk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lc8/jvk;->checkFollowed(Ljava/lang/String;ZLc8/hvk;)V

    .line 235
    return-void
.end method

.method public checkFollowed(Ljava/lang/String;ZLc8/hvk;)V
    .locals 7
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "asyncRequest"    # Z
    .param p3, "listener"    # Lc8/hvk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 238
    if-nez p3, :cond_0

    .line 309
    :goto_0
    return-void

    .line 242
    :cond_0
    const-class v5, Lc8/vdn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/vdn;

    invoke-interface {v5}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "uid":Ljava/lang/String;
    const-string/jumbo v0, "mtop.tudou.subscribe.service.subscribe.trackershow.isSubscribeShow"

    .line 246
    .local v0, "apiName":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v0, p1, v4, v5}, Lc8/jvk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    .line 248
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFollowed, apiName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; showId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    :try_start_0
    invoke-direct {p0, v3}, Lc8/jvk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v5

    new-instance v6, Lc8/avk;

    invoke-direct {v6, p0, p1, v4, p3}, Lc8/avk;-><init>(Lc8/jvk;Ljava/lang/String;Ljava/lang/String;Lc8/hvk;)V

    invoke-virtual {v5, v6}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v1

    .line 300
    .local v1, "builder":Lc8/COp;
    if-eqz p2, :cond_1

    .line 301
    invoke-virtual {v1}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1    # "builder":Lc8/COp;
    :catch_0
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFollowed, showId, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {p3, v5}, Lc8/hvk;->onCheckFollowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_0

    .line 303
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Lc8/COp;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public checkFollowed(Ljava/util/List;Lc8/gvk;)V
    .locals 1
    .param p2, "listener"    # Lc8/gvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lc8/gvk;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lc8/jvk;->checkFollowed(Ljava/util/List;ZLc8/gvk;)V

    .line 313
    return-void
.end method

.method public checkFollowed(Ljava/util/List;ZLc8/gvk;)V
    .locals 7
    .param p2, "asyncRequest"    # Z
    .param p3, "listener"    # Lc8/gvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lc8/gvk;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const-class v5, Lc8/vdn;

    invoke-static {v5}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/vdn;

    invoke-interface {v5}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "uid":Ljava/lang/String;
    const-string/jumbo v0, "mtop.tudou.subscribe.service.subscribe.trackershow.hasShows"

    .line 324
    .local v0, "apiName":Ljava/lang/String;
    const-string/jumbo v5, ""

    invoke-direct {p0, v0, v5, v4, p1}, Lc8/jvk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    .line 326
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFollowed, apiName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; showIds = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    :try_start_0
    invoke-direct {p0, v3}, Lc8/jvk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v5

    new-instance v6, Lc8/bvk;

    invoke-direct {v6, p0, v4, p1, p3}, Lc8/bvk;-><init>(Lc8/jvk;Ljava/lang/String;Ljava/util/List;Lc8/gvk;)V

    invoke-virtual {v5, v6}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v1

    .line 385
    .local v1, "builder":Lc8/COp;
    if-eqz p2, :cond_2

    .line 386
    invoke-virtual {v1}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    .end local v1    # "builder":Lc8/COp;
    :catch_0
    move-exception v2

    .line 391
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkFollowed, showIds, Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    sget-object v5, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {p3, v5}, Lc8/gvk;->OnCheckFollowListFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_0

    .line 388
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "builder":Lc8/COp;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public mergeShow(Lc8/ivk;)V
    .locals 6
    .param p1, "listener"    # Lc8/ivk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 401
    :cond_0
    const-class v4, Lc8/vdn;

    invoke-static {v4}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/vdn;

    invoke-interface {v4}, Lc8/vdn;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 403
    .local v3, "uid":Ljava/lang/String;
    const-string/jumbo v0, "mtop.tudou.subscribe.service.subscribe.trackershow.mergeShow"

    .line 405
    .local v0, "apiName":Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v3, v5}, Lc8/jvk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    .line 407
    .local v2, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mergeShow, apiName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    :try_start_0
    invoke-direct {p0, v2}, Lc8/jvk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v4

    new-instance v5, Lc8/cvk;

    invoke-direct {v5, p0, v3, p1}, Lc8/cvk;-><init>(Lc8/jvk;Ljava/lang/String;Lc8/ivk;)V

    invoke-virtual {v4, v5}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v4

    .line 450
    invoke-virtual {v4}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mergeShow, Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    sget-object v4, Lcom/youku/phone/follow/manager/FollowManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/follow/manager/FollowManager$RequestError;

    invoke-interface {p1, v4}, Lc8/ivk;->onMergeShowFail(Lcom/youku/phone/follow/manager/FollowManager$RequestError;)V

    goto :goto_0
.end method
