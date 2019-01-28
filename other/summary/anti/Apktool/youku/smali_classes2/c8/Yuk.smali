.class public Lc8/Yuk;
.super Ljava/lang/Object;
.source "FavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Uuk;,
        Lc8/Vuk;,
        Lc8/Wuk;,
        Lc8/Xuk;,
        Lc8/Tuk;,
        Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_FAVORITE:Ljava/lang/String; = "com.youku.action.ADD_FAVORITE"

.field public static final ACTION_BATCH_REMOVE_FAVORITE:Ljava/lang/String; = "com.youku.action.BATCH_REMOVE_FAVORITE"

.field public static final ACTION_FAVORITE_BATCH_IS_FAV:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.favourite.batchIsFav"

.field public static final ACTION_FAVORITE_BATCH_REMOVE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.favourite.batchRemove"

.field public static final ACTION_FAVORITE_CREATE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.favourite.create"

.field public static final ACTION_FAVORITE_IS_FAV:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.favourite.isfav"

.field public static final ACTION_FAVORITE_MERGE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.favourite.merge"

.field public static final ACTION_FAVORITE_REMOVE:Ljava/lang/String; = "mtop.tudou.subscribe.service.subscribe.favourite.remove"

.field public static final ACTION_REMOVE_FAVORITE:Ljava/lang/String; = "com.youku.action.REMOVE_FAVORITE"

.field private static final CONN_TIMEOUT:I = 0x1388

.field public static final EXTRA_FAVORITE_SID:Ljava/lang/String; = "sid"

.field public static final EXTRA_FAVORITE_SIDS:Ljava/lang/String; = "sids"

.field public static final EXTRA_FAVORITE_SRC:Ljava/lang/String; = "src"

.field public static final EXTRA_FAVORITE_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_FAVORITE_VID:Ljava/lang/String; = "vid"

.field public static final EXTRA_FAVORITE_VIDS:Ljava/lang/String; = "vids"

.field public static final JSON_KEY_DISPLAYMSG:Ljava/lang/String; = "displayMsg"

.field public static final JSON_KEY_RESULT:Ljava/lang/String; = "result"

.field public static final JSON_KEY_SID_RESULT_MAP:Ljava/lang/String; = "sidResultMap"

.field public static final JSON_KEY_SUBCODE:Ljava/lang/String; = "subCode"

.field public static final JSON_KEY_VID_RESULT_MAP:Ljava/lang/String; = "vidResultMap"

.field public static final KEY_GUID:Ljava/lang/String; = "guid"

.field public static final KEY_SID:Ljava/lang/String; = "showid"

.field public static final KEY_SIDS:Ljava/lang/String; = "sids"

.field public static final KEY_SRC:Ljava/lang/String; = "src"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_VID:Ljava/lang/String; = "vid"

.field public static final KEY_VIDS:Ljava/lang/String; = "vids"

.field private static final NEED_CODE:Z = false

.field private static final SOCKET_TIMEOUT:I = 0x1388

.field public static final SRC_DISCOV:Ljava/lang/String; = "DISCOV"

.field public static final SRC_FAV:Ljava/lang/String; = "FAV"

.field public static final SRC_HOME:Ljava/lang/String; = "HOME"

.field public static final SRC_LAND:Ljava/lang/String; = "LAND"

.field public static final SRC_PLAY:Ljava/lang/String; = "PLAY"

.field public static final SRC_PLAYLIST:Ljava/lang/String; = "PLAYLIST"

.field public static final SRC_SCHED:Ljava/lang/String; = "SCHED"

.field public static final SRC_SEARCH:Ljava/lang/String; = "SEARCH"

.field public static final SRC_WORTH:Ljava/lang/String; = "WORTH"

.field public static final SUBCODE_EXCEED:Ljava/lang/String; = "EXCEED"

.field public static final SUBCODE_NONE:Ljava/lang/String; = "NONE"

.field public static final SUBCODE_ONLY_FAV:Ljava/lang/String; = "ONLY_FAV"

.field public static final SUBCODE_ONLY_SUB:Ljava/lang/String; = "ONLY_SUB"

.field public static final TAG:Ljava/lang/String; = "FavoriteManager"

.field private static final VERSION:Ljava/lang/String; = "1.0"

.field private static mMtop:Lc8/AOp;

.field private static sInstance:Lc8/Yuk;


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

    sput-object v0, Lc8/Yuk;->mMtop:Lc8/AOp;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Yuk;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lc8/Yuk;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/Yuk;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Yuk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Yuk;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Yuk;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Yuk;->sendFavoriteBroadcast(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/Yuk;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/Yuk;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/Yuk;->sendBatchRemoveFavoriteBroadcast(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 8
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 589
    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    return-object v0
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 8
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "src"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 593
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    return-object v0
.end method

.method private buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;
    .locals 7
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
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
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/domain/MtopRequest;"
        }
    .end annotation

    .prologue
    .line 597
    .local p6, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v2}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 598
    .local v2, "request":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v2, p1}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v5, "1.0"

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 600
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setNeedEcode(Z)V

    .line 602
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 603
    .local v0, "apiParamsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "uid"

    invoke-virtual {v0, v5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v5, "guid"

    sget-object v6, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string/jumbo v5, "showid"

    invoke-virtual {v0, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string/jumbo v5, "vid"

    invoke-virtual {v0, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string/jumbo v5, "src"

    invoke-virtual {v0, v5, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    if-eqz p6, :cond_1

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v3, "sidBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 611
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 614
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sids = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    const-string/jumbo v5, "sids"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v3    # "sidBuilder":Ljava/lang/StringBuilder;
    :cond_1
    if-eqz p7, :cond_3

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v4, "vidBuilder":Ljava/lang/StringBuilder;
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 622
    .restart local v1    # "id":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 625
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vids = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    const-string/jumbo v5, "vids"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .end local v4    # "vidBuilder":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "buildMtopRequest, apiParamsMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 630
    invoke-static {v0}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 632
    return-object v2
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/Yuk;
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lc8/Yuk;->sInstance:Lc8/Yuk;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lc8/Yuk;

    invoke-direct {v0, p0}, Lc8/Yuk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Yuk;->sInstance:Lc8/Yuk;

    .line 97
    :cond_0
    sget-object v0, Lc8/Yuk;->sInstance:Lc8/Yuk;

    return-object v0
.end method

.method private getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;
    .locals 3
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    const/16 v2, 0x1388

    .line 636
    sget-object v0, Lc8/Yuk;->mMtop:Lc8/AOp;

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

.method private sendBatchRemoveFavoriteBroadcast(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 656
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBatchRemoveFavoriteBroadcast showIds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; videoIds = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; src = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    const-string/jumbo v0, "com.youku.action.BATCH_REMOVE_FAVORITE"

    .line 659
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 660
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string/jumbo v3, "sids"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 663
    const-string/jumbo v3, "vids"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 664
    const-string/jumbo v3, "src"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    iget-object v3, p0, Lc8/Yuk;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 667
    :catch_0
    move-exception v1

    .line 668
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFavoriteBroadcast(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "addFavorite"    # Z
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;

    .prologue
    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendFavoriteBroadcast addFavorite = "

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

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; videoId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.youku.action.ADD_FAVORITE"

    .line 643
    .local v0, "action":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 644
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    const-string/jumbo v3, "uid"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string/jumbo v3, "sid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string/jumbo v3, "vid"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    iget-object v3, p0, Lc8/Yuk;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 641
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "com.youku.action.REMOVE_FAVORITE"

    goto :goto_0

    .line 650
    .restart local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Tuk;)V
    .locals 7
    .param p1, "addFavorite"    # Z
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "listener"    # Lc8/Tuk;

    .prologue
    .line 139
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lc8/Yuk;->addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/Tuk;)V

    .line 140
    return-void
.end method

.method public addOrCancelFavorite(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLc8/Tuk;)V
    .locals 22
    .param p1, "addFavorite"    # Z
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "asyncRequest"    # Z
    .param p6, "listener"    # Lc8/Tuk;

    .prologue
    .line 143
    if-nez p6, :cond_0

    .line 242
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    const-string/jumbo v6, "NONE"

    const-string/jumbo v7, ""

    sget-object v8, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v2, p6

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v2 .. v8}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_0

    .line 153
    :cond_1
    const-string/jumbo v6, ""

    .line 154
    .local v6, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v6, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 157
    :cond_2
    move-object v11, v6

    .line 161
    .local v11, "backUid":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 162
    const-string/jumbo v3, "mtop.tudou.subscribe.service.subscribe.favourite.create"

    .local v3, "apiName":Ljava/lang/String;
    :goto_1
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    .line 167
    invoke-direct/range {v2 .. v7}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v21

    .line 169
    .local v21, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addOrCancelFavorite, apiName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "; showId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";videoId =  "

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

    .line 171
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lc8/Yuk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v2

    new-instance v7, Lc8/Ouk;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p4

    move/from16 v14, p1

    invoke-direct/range {v7 .. v14}, Lc8/Ouk;-><init>(Lc8/Yuk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Tuk;Ljava/lang/String;Z)V

    invoke-virtual {v2, v7}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v19

    .line 230
    .local v19, "builder":Lc8/COp;
    if-eqz p5, :cond_4

    .line 231
    invoke-virtual/range {v19 .. v19}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 235
    .end local v19    # "builder":Lc8/COp;
    :catch_0
    move-exception v20

    .line 236
    .local v20, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addOrCancelFavorite, Exception = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    const-string/jumbo v16, "NONE"

    const-string/jumbo v17, ""

    sget-object v18, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v12, p6

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-interface/range {v12 .. v18}, Lc8/Tuk;->onAddOrRemoveFavoriteFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_0

    .line 164
    .end local v3    # "apiName":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v21    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_3
    const-string/jumbo v3, "mtop.tudou.subscribe.service.subscribe.favourite.remove"

    .restart local v3    # "apiName":Ljava/lang/String;
    goto/16 :goto_1

    .line 233
    .restart local v19    # "builder":Lc8/COp;
    .restart local v21    # "request":Lmtopsdk/mtop/domain/MtopRequest;
    :cond_4
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public batchRemoveFavorite(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lc8/Uuk;)V
    .locals 6
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Uuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lc8/Uuk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 423
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/Yuk;->batchRemoveFavorite(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLc8/Uuk;)V

    .line 424
    return-void
.end method

.method public batchRemoveFavorite(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLc8/Uuk;)V
    .locals 20
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "asyncRequest"    # Z
    .param p5, "listener"    # Lc8/Uuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lc8/Uuk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_1

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 512
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_3

    .line 433
    sget-object v4, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_0

    .line 437
    :cond_3
    const-string/jumbo v8, ""

    .line 438
    .local v8, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 439
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v4

    iget-object v8, v4, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 441
    :cond_4
    move-object/from16 v16, v8

    .line 445
    .local v16, "backUid":Ljava/lang/String;
    const-string/jumbo v5, "mtop.tudou.subscribe.service.subscribe.favourite.batchRemove"

    .line 447
    .local v5, "apiName":Ljava/lang/String;
    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object/from16 v4, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-direct/range {v4 .. v11}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v19

    .line 449
    .local v19, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "batchRemoveFavorite, apiName = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; showIds = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; videoIds =  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 451
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lc8/Yuk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v4

    new-instance v9, Lc8/Ruk;

    move-object/from16 v10, p0

    move-object/from16 v11, v16

    move-object/from16 v12, p5

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lc8/Ruk;-><init>(Lc8/Yuk;Ljava/lang/String;Lc8/Uuk;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v17

    .line 503
    .local v17, "builder":Lc8/COp;
    if-eqz p4, :cond_5

    .line 504
    invoke-virtual/range {v17 .. v17}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 508
    .end local v17    # "builder":Lc8/COp;
    :catch_0
    move-exception v18

    .line 509
    .local v18, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "batchRemoveFavorite, Exception = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    sget-object v4, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lc8/Uuk;->OnBatchRemoveFavoriteFail(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_0

    .line 506
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v17    # "builder":Lc8/COp;
    :cond_5
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public checkFavorite(Ljava/lang/String;Ljava/lang/String;Lc8/Wuk;)V
    .locals 1
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/Wuk;

    .prologue
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/Yuk;->checkFavorite(Ljava/lang/String;Ljava/lang/String;ZLc8/Wuk;)V

    .line 246
    return-void
.end method

.method public checkFavorite(Ljava/lang/String;Ljava/lang/String;ZLc8/Wuk;)V
    .locals 13
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "asyncRequest"    # Z
    .param p4, "listener"    # Lc8/Wuk;

    .prologue
    .line 249
    if-nez p4, :cond_0

    .line 331
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, p2, v1}, Lc8/Wuk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_0

    .line 259
    :cond_1
    const-string/jumbo v11, ""

    .line 260
    .local v11, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 261
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v1

    iget-object v11, v1, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 263
    :cond_2
    move-object v5, v11

    .line 266
    .local v5, "backUid":Ljava/lang/String;
    const-string/jumbo v7, "mtop.tudou.subscribe.service.subscribe.favourite.isfav"

    .line 268
    .local v7, "apiName":Ljava/lang/String;
    invoke-direct {p0, v7, p1, p2, v11}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v10

    .line 270
    .local v10, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkFavorite, apiName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; showId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";videoId =  "

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

    .line 272
    :try_start_0
    invoke-direct {p0, v10}, Lc8/Yuk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v12

    new-instance v1, Lc8/Puk;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lc8/Puk;-><init>(Lc8/Yuk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Wuk;)V

    invoke-virtual {v12, v1}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v8

    .line 322
    .local v8, "builder":Lc8/COp;
    if-eqz p3, :cond_3

    .line 323
    invoke-virtual {v8}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v8    # "builder":Lc8/COp;
    :catch_0
    move-exception v9

    .line 328
    .local v9, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkFavorite, showId, Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    sget-object v1, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v0, p4

    invoke-interface {v0, p1, p2, v1}, Lc8/Wuk;->onCheckFavoriteFail(Ljava/lang/String;Ljava/lang/String;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_0

    .line 325
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "builder":Lc8/COp;
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public checkFavorite(Ljava/util/List;Ljava/util/List;Lc8/Vuk;)V
    .locals 1
    .param p3, "listener"    # Lc8/Vuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lc8/Vuk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/Yuk;->checkFavorite(Ljava/util/List;Ljava/util/List;ZLc8/Vuk;)V

    .line 335
    return-void
.end method

.method public checkFavorite(Ljava/util/List;Ljava/util/List;ZLc8/Vuk;)V
    .locals 18
    .param p3, "asyncRequest"    # Z
    .param p4, "listener"    # Lc8/Vuk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lc8/Vuk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, "showIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "videoIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 420
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    invoke-static {}, Lc8/nzk;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_3

    .line 344
    sget-object v3, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_NETWORK:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lc8/Vuk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto :goto_0

    .line 348
    :cond_3
    const-string/jumbo v8, ""

    .line 349
    .local v8, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 350
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v3

    iget-object v8, v3, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 352
    :cond_4
    move-object v11, v8

    .line 355
    .local v11, "backUid":Ljava/lang/String;
    const-string/jumbo v4, "mtop.tudou.subscribe.service.subscribe.favourite.batchIsFav"

    .line 357
    .local v4, "apiName":Ljava/lang/String;
    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object/from16 v3, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v10}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v17

    .line 359
    .local v17, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkFavorite, apiName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; showIds = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "; videoIds =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 361
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/Yuk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v3

    new-instance v9, Lc8/Quk;

    move-object/from16 v10, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lc8/Quk;-><init>(Lc8/Yuk;Ljava/lang/String;Lc8/Vuk;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v3, v9}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v15

    .line 411
    .local v15, "builder":Lc8/COp;
    if-eqz p3, :cond_5

    .line 412
    invoke-virtual {v15}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 416
    .end local v15    # "builder":Lc8/COp;
    :catch_0
    move-exception v16

    .line 417
    .local v16, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkFavorite, showIds or videoIds, Exception = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    sget-object v3, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v3}, Lc8/Vuk;->OnCheckFavoriteListFail(Ljava/util/List;Ljava/util/List;Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_0

    .line 414
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v15    # "builder":Lc8/COp;
    :cond_5
    :try_start_1
    invoke-virtual {v15}, Lc8/COp;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public mergeFavorite(Ljava/lang/String;Lc8/Xuk;)V
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/Xuk;

    .prologue
    .line 515
    if-nez p2, :cond_0

    .line 586
    :goto_0
    return-void

    .line 519
    :cond_0
    const-string/jumbo v4, ""

    .line 520
    .local v4, "uid":Ljava/lang/String;
    invoke-static {}, Lc8/Gko;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v0

    iget-object v4, v0, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 523
    :cond_1
    move-object v6, v4

    .line 527
    .local v6, "backUid":Ljava/lang/String;
    const-string/jumbo v1, "mtop.tudou.subscribe.service.subscribe.favourite.merge"

    .line 529
    .local v1, "apiName":Ljava/lang/String;
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/Yuk;->buildMtopRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v8

    .line 531
    .local v8, "request":Lmtopsdk/mtop/domain/MtopRequest;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mergeFavorite, apiName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; guid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lc8/Dfh;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; src = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    :try_start_0
    invoke-direct {p0, v8}, Lc8/Yuk;->getMtopBuilder(Lmtopsdk/mtop/domain/MtopRequest;)Lc8/COp;

    move-result-object v0

    new-instance v2, Lc8/Suk;

    invoke-direct {v2, p0, v6, p2}, Lc8/Suk;-><init>(Lc8/Yuk;Ljava/lang/String;Lc8/Xuk;)V

    invoke-virtual {v0, v2}, Lc8/COp;->addListener(Lc8/QNp;)Lc8/COp;

    move-result-object v0

    .line 581
    invoke-virtual {v0}, Lc8/COp;->asyncRequest()Lc8/ENp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v7

    .line 583
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mergeFavorite, Exception = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    sget-object v0, Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;->ERROR_UNKNOWN:Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;

    invoke-interface {p2, v0}, Lc8/Xuk;->onMergeFavoriteFail(Lcom/youku/phone/favorite/manager/FavoriteManager$RequestError;)V

    goto/16 :goto_0
.end method
