.class public Lc8/Czk;
.super Ljava/lang/Object;
.source "PlaylistManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zzk;,
        Lc8/Azk;,
        Lc8/Bzk;,
        Lc8/yzk;,
        Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_PLAYLIST_FAVORITE:Ljava/lang/String; = "com.youku.action.ADD_PLAYLIST_FAVORITE"

.field public static final ACTION_BATCH_REMOVE_PLAYLIST_FAVORITE:Ljava/lang/String; = "com.youku.action.BATCH_REMOVE_PLAYLIST_FAVORITE"

.field public static final ACTION_PLAYLIST_FAVORITE_BATCH_IS_FAV:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.purefavourite.batchIsFav"

.field public static final ACTION_PLAYLIST_FAVORITE_BATCH_REMOVE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.purefavourite.batchRemove"

.field public static final ACTION_PLAYLIST_FAVORITE_CREATE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.purefavourite.create"

.field public static final ACTION_PLAYLIST_FAVORITE_IS_FAV:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.purefavourite.isfav"

.field public static final ACTION_PLAYLIST_FAVORITE_REMOVE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.purefavourite.remove"

.field public static final ACTION_REMOVE_PLAYLIST_FAVORITE:Ljava/lang/String; = "com.youku.action.REMOVE_PLAYLIST_FAVORITE"

.field private static final CONN_TIMEOUT:I = 0x1388

.field public static final EXTRA_FAVORITE_SRC:Ljava/lang/String; = "src"

.field public static final EXTRA_PLAYLIST_FAVORITE_OBJ_ID:Ljava/lang/String; = "obj_id"

.field public static final EXTRA_PLAYLIST_FAVORITE_OBJ_IDS:Ljava/lang/String; = "obj_ids"

.field public static final EXTRA_PLAYLIST_FAVORITE_SID:Ljava/lang/String; = "sid"

.field public static final EXTRA_PLAYLIST_FAVORITE_TYPE:Ljava/lang/String; = "type"

.field public static final EXTRA_PLAYLIST_FAVORITE_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_PLAYLIST_FAVORITE_VID:Ljava/lang/String; = "vid"

.field public static final JSON_KEY_DISPLAYMSG:Ljava/lang/String; = "displayMsg"

.field public static final JSON_KEY_OBJ_IDS_RESULT_MAP:Ljava/lang/String; = "objidResultMap"

.field public static final JSON_KEY_RESULT:Ljava/lang/String; = "result"

.field public static final JSON_KEY_SUBCODE:Ljava/lang/String; = "subCode"

.field public static final KEY_GUID:Ljava/lang/String; = "guid"

.field public static final KEY_OBJ_ID:Ljava/lang/String; = "obj_id"

.field public static final KEY_OBJ_IDS:Ljava/lang/String; = "obj_ids"

.field public static final KEY_SID:Ljava/lang/String; = "showid"

.field public static final KEY_SIDS:Ljava/lang/String; = "sids"

.field public static final KEY_SRC:Ljava/lang/String; = "src"

.field public static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_VID:Ljava/lang/String; = "vid"

.field public static final KEY_VIDS:Ljava/lang/String; = "vids"

.field private static final NEED_CODE:Z = false

.field private static final SOCKET_TIMEOUT:I = 0x1388

.field public static final SRC_DISCOV:Ljava/lang/String; = "DISCOV"

.field public static final SRC_FAV:Ljava/lang/String; = "FAV"

.field public static final SRC_LAND:Ljava/lang/String; = "LAND"

.field public static final SRC_PLAY:Ljava/lang/String; = "PLAY"

.field public static final SRC_PLAYLIST:Ljava/lang/String; = "PLAYLIST"

.field public static final SRC_SCHED:Ljava/lang/String; = "SCHED"

.field public static final SRC_SEARCH:Ljava/lang/String; = "SEARCH"

.field public static final SUBCODE_EXCEED:Ljava/lang/String; = "EXCEED"

.field public static final SUBCODE_NONE:Ljava/lang/String; = "NONE"

.field public static final SUBCODE_ONLY_FAV:Ljava/lang/String; = "ONLY_FAV"

.field public static final SUBCODE_ONLY_SUB:Ljava/lang/String; = "ONLY_SUB"

.field public static final TAG:Ljava/lang/String; = "PlaylistManager"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static mMtop:Lc8/AOp;

.field private static sInstance:Lc8/Czk;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "cxt"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "INNER"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/AOp;->instance(Ljava/lang/String;Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    sput-object v0, Lc8/Czk;->mMtop:Lc8/AOp;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Czk;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lc8/Czk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/Czk;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Czk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Czk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Czk;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Czk;->sendFavoriteBroadcast(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/Czk;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Czk;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lc8/Czk;->sendBatchRemoveFavoriteBroadcast(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 7
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "obj_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string/jumbo v5, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lc8/Czk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    return-object v0
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 7
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "obj_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;

    .prologue
    .line 516
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lc8/Czk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    return-object v0
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 6
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "obj_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .line 520
    .local p6, "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 521
    .local v3, "request":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v3, p1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v4, "1.0"

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 523
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    .local v0, "apiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "uid"

    invoke-virtual {v0, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string/jumbo v4, "guid"

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string/jumbo v4, "obj_id"

    invoke-virtual {v0, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string/jumbo v4, "src"

    invoke-virtual {v0, v4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .local v2, "objIdBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 534
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 537
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "obj_ids = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 539
    const-string/jumbo v4, "obj_ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .end local v2    # "objIdBuilder":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "buildMtopRequest, apiParamsMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    invoke-static {v0}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 545
    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/Czk;
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lc8/Czk;->sInstance:Lc8/Czk;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lc8/Czk;

    invoke-direct {v0, p0}, Lc8/Czk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Czk;->sInstance:Lc8/Czk;

    .line 97
    :cond_0
    sget-object v0, Lc8/Czk;->sInstance:Lc8/Czk;

    return-object v0
.end method

.method private getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;
    .locals 3
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    const/16 v2, 0x1388

    .line 549
    sget-object v0, Lc8/Czk;->mMtop:Lc8/AOp;

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

.method private sendBatchRemoveFavoriteBroadcast(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 569
    .local p1, "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBatchRemoveFavoriteBroadcast obj_ids = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; type = "

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

    .line 570
    const-string/jumbo v0, "com.youku.action.BATCH_REMOVE_PLAYLIST_FAVORITE"

    .line 572
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 573
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    const-string/jumbo v3, "obj_ids"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 576
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    iget-object v3, p0, Lc8/Czk;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFavoriteBroadcast(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "addFavorite"    # Z
    .param p2, "obj_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFavoriteBroadcast addFavorite = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; obj_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 554
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.youku.action.ADD_PLAYLIST_FAVORITE"

    .line 556
    .local v0, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 557
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string/jumbo v3, "obj_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v3, p0, Lc8/Czk;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 554
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "com.youku.action.REMOVE_PLAYLIST_FAVORITE"

    goto :goto_0

    .line 563
    .restart local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 564
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/yzk;)V
    .locals 7
    .param p1, "addFavorite"    # Z
    .param p2, "obj_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "listener"    # Lc8/yzk;

    .prologue
    .line 134
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lc8/Czk;->addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/yzk;)V

    .line 135
    return-void
.end method

.method public addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/yzk;)V
    .locals 21
    .param p1, "addFavorite"    # Z
    .param p2, "obj_id"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "asyncRequest"    # Z
    .param p6, "listener"    # Lc8/yzk;

    .prologue
    .line 138
    if-nez p6, :cond_0

    .line 236
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    const-string/jumbo v6, ""

    sget-object v7, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v7}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v6, ""

    .line 149
    .local v6, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v6, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 152
    :cond_2
    move-object v11, v6

    .line 156
    .local v11, "backUid":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 157
    const-string/jumbo v3, "mtop.tudou.subscribe.service.subscribe.purefavourite.create"

    .local v3, "apiName":Ljava/lang/String;
    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .line 162
    invoke-direct/range {v2 .. v7}, Lc8/Czk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v20

    .line 164
    .local v20, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addOrCancelFavorite, apiName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; obj_id = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";type =  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; src = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; uid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; guid = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lc8/Czk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v2

    new-instance v7, Lc8/uzk;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p4

    move/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lc8/uzk;-><init>(Lc8/Czk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/yzk;Ljava/lang/String;Z)V

    invoke-virtual {v2, v7}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v18

    .line 224
    .local v18, "builder":Lc8/COp;
    if-eqz p5, :cond_4

    .line 225
    invoke-virtual/range {v18 .. v18}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 229
    .end local v18    # "builder":Lc8/COp;
    :catch_0
    move-exception v19

    .line 230
    .local v19, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addOrCancelFavorite, Exception = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    const-string/jumbo v16, ""

    sget-object v17, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v12, p6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-interface/range {v12 .. v17}, Lc8/yzk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto/16 :goto_0

    .line 159
    .end local v3    # "apiName":Ljava/lang/String;
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v20    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_3
    const-string/jumbo v3, "mtop.tudou.subscribe.service.subscribe.purefavourite.remove"

    .restart local v3    # "apiName":Ljava/lang/String;
    goto/16 :goto_1

    .line 227
    .restart local v18    # "builder":Lc8/COp;
    .restart local v20    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_4
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public batchRemoveFavorite(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lc8/zzk;)V
    .locals 6
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/zzk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lc8/zzk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Czk;->batchRemoveFavorite(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLc8/zzk;)V

    .line 421
    return-void
.end method

.method public batchRemoveFavorite(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLc8/zzk;)V
    .locals 19
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "asyncRequest"    # Z
    .param p5, "listener"    # Lc8/zzk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lc8/zzk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_2

    .line 430
    sget-object v4, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_0

    .line 434
    :cond_2
    const-string/jumbo v8, ""

    .line 435
    .local v8, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 436
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    iget-object v8, v4, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 438
    :cond_3
    move-object v11, v8

    .line 442
    .local v11, "backUid":Ljava/lang/String;
    const-string/jumbo v5, "mtop.tudou.subscribe.service.subscribe.purefavourite.batchRemove"

    .line 444
    .local v5, "apiName":Ljava/lang/String;
    const-string/jumbo v6, ""

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    invoke-direct/range {v4 .. v10}, Lc8/Czk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v18

    .line 446
    .local v18, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "batchRemoveFavorite, apiName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; obj_ids = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; type =  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; guid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; src = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lc8/Czk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v4

    new-instance v9, Lc8/xzk;

    move-object/from16 v10, p0

    move-object/from16 v12, p5

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lc8/xzk;-><init>(Lc8/Czk;Ljava/lang/String;Lc8/zzk;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v16

    .line 500
    .local v16, "builder":Lc8/COp;
    if-eqz p4, :cond_4

    .line 501
    invoke-virtual/range {v16 .. v16}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 505
    .end local v16    # "builder":Lc8/COp;
    :catch_0
    move-exception v17

    .line 506
    .local v17, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "batchRemoveFavorite, Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    sget-object v4, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/zzk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto/16 :goto_0

    .line 503
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v16    # "builder":Lc8/COp;
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public checkFavorite(Ljava/lang/String;Ljava/lang/String;Lc8/Bzk;)V
    .locals 1
    .param p1, "obj_id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/Bzk;

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/Czk;->checkFavorite(Ljava/lang/String;Ljava/lang/String;ZLc8/Bzk;)V

    .line 240
    return-void
.end method

.method public checkFavorite(Ljava/lang/String;Ljava/lang/String;ZLc8/Bzk;)V
    .locals 13
    .param p1, "obj_id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "asyncRequest"    # Z
    .param p4, "listener"    # Lc8/Bzk;

    .prologue
    .line 243
    if-nez p4, :cond_0

    .line 325
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    sget-object v1, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, p2, v1}, Lc8/Bzk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_0

    .line 253
    :cond_1
    const-string/jumbo v11, ""

    .line 254
    .local v11, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    iget-object v11, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 257
    :cond_2
    move-object v5, v11

    .line 260
    .local v5, "backUid":Ljava/lang/String;
    const-string/jumbo v7, "mtop.tudou.subscribe.service.subscribe.purefavourite.isfav"

    .line 262
    .local v7, "apiName":Ljava/lang/String;
    invoke-direct {p0, v7, p1, p2, v11}, Lc8/Czk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v10

    .line 264
    .local v10, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkFavorite, apiName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; obj_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";type =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; guid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    :try_start_0
    invoke-direct {p0, v10}, Lc8/Czk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v12

    new-instance v1, Lc8/vzk;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lc8/vzk;-><init>(Lc8/Czk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Bzk;)V

    invoke-virtual {v12, v1}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v8

    .line 316
    .local v8, "builder":Lc8/COp;
    if-eqz p3, :cond_3

    .line 317
    invoke-virtual {v8}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    .end local v8    # "builder":Lc8/COp;
    :catch_0
    move-exception v9

    .line 322
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkFavorite, showId, Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    sget-object v1, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, p2, v1}, Lc8/Bzk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto/16 :goto_0

    .line 319
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "builder":Lc8/COp;
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public checkFavorite(Ljava/util/List;Ljava/lang/String;Lc8/Azk;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/Azk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lc8/Azk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/Czk;->checkFavorite(Ljava/util/List;Ljava/lang/String;ZLc8/Azk;)V

    .line 329
    return-void
.end method

.method public checkFavorite(Ljava/util/List;Ljava/lang/String;ZLc8/Azk;)V
    .locals 18
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "asyncRequest"    # Z
    .param p4, "listener"    # Lc8/Azk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lc8/Azk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, "obj_ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_0

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_2

    .line 338
    sget-object v3, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto :goto_0

    .line 342
    :cond_2
    const-string/jumbo v8, ""

    .line 343
    .local v8, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 344
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v3

    iget-object v8, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 346
    :cond_3
    move-object v11, v8

    .line 349
    .local v11, "backUid":Ljava/lang/String;
    const-string/jumbo v4, "mtop.tudou.subscribe.service.subscribe.purefavourite.batchIsFav"

    .line 351
    .local v4, "apiName":Ljava/lang/String;
    const-string/jumbo v5, ""

    const-string/jumbo v7, ""

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v9, p1

    invoke-direct/range {v3 .. v9}, Lc8/Czk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v17

    .line 353
    .local v17, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkFavorite, apiName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; obj_ids = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; type =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; uid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; guid = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/Czk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v3

    new-instance v9, Lc8/wzk;

    move-object/from16 v10, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lc8/wzk;-><init>(Lc8/Czk;Ljava/lang/String;Lc8/Azk;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v15

    .line 408
    .local v15, "builder":Lc8/COp;
    if-eqz p3, :cond_4

    .line 409
    invoke-virtual {v15}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 413
    .end local v15    # "builder":Lc8/COp;
    :catch_0
    move-exception v16

    .line 414
    .local v16, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkFavorite, obj_ids, Exception = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    sget-object v3, Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lc8/Azk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/playlist/manager/PlaylistManager$RequestError;)V

    goto/16 :goto_0

    .line 411
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v15    # "builder":Lc8/COp;
    :cond_4
    :try_start_1
    invoke-virtual {v15}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
