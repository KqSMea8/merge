.class public Lcom/ut/mini/UTPageHitHelper;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ut/mini/UTPageHitHelper$PageChangeListener;,
        Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;,
        Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    }
.end annotation


# static fields
.field private static final MAX_SKIP_CLEAR_PAGE_OBJECT_CACHE_CAPACITY:I = 0x64

.field private static final MAX_SPM_OBJECT_CACHE_CAPACITY:I = 0x32

.field static final SKIPBK:Ljava/lang/String; = "skipbk"

.field static final UTPARAM_CNT:Ljava/lang/String; = "utparam-cnt"

.field private static mPageChangerListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ut/mini/UTPageHitHelper$PageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private static s_instance:Lcom/ut/mini/UTPageHitHelper;


# instance fields
.field private mBackupNextPageProperties:Ljava/util/Map;
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

.field private mClearUTPageStateObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPage:Ljava/lang/String;

.field private mCurrentPageCacheKey:Ljava/lang/String;

.field private mIsTurnOff:Z

.field private mLastCacheKey:Ljava/lang/String;

.field private mLastCacheKeySpmUrl:Ljava/lang/String;

.field private mLastCacheKeyUtParam:Ljava/lang/String;

.field private mLastCacheKeyUtParamCnt:Ljava/lang/String;

.field private mNextPageProperties:Ljava/util/Map;
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

.field private mNextPageSkipBack:Z

.field private mPageEventObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;",
            ">;"
        }
    .end annotation
.end field

.field private mPageProperties:Ljava/util/Map;
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

.field private mPageStateObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSPMObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSPMObjectMap:Ljava/util/Map;
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

.field private mSkipClearPageObjectList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/ut/mini/UTPageHitHelper;

    invoke-direct {v0}, Lcom/ut/mini/UTPageHitHelper;-><init>()V

    sput-object v0, Lcom/ut/mini/UTPageHitHelper;->s_instance:Lcom/ut/mini/UTPageHitHelper;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    .line 137
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    .line 301
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 304
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    .line 305
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 307
    iput-boolean v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    .line 308
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 309
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    .line 314
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    .line 324
    return-void
.end method

.method private _clearPageDisAppearContext()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 803
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    .line 804
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 805
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 807
    iput-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 808
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTVariables;->setBackupH5Url(Ljava/lang/String;)V

    .line 809
    return-void
.end method

.method private declared-synchronized _clearUTPageEventObjectCache(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 2
    .param p1, "aPageEventObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_0
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :goto_0
    monitor-exit p0

    return-object v2

    .line 450
    :cond_0
    :try_start_1
    new-instance v1, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    invoke-direct {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;-><init>()V

    .line 451
    .local v1, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-virtual {v1, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setCacheKey(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 453
    goto :goto_0

    .line 446
    .end local v0    # "lCacheKey":Ljava/lang/String;
    .end local v1    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static _getOutsideTTID(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "pUri"    # Landroid/net/Uri;

    .prologue
    .line 1291
    if-eqz p0, :cond_1

    .line 1292
    const-string/jumbo v3, "ttid"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1293
    .local v1, "lResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1294
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1295
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1296
    const-string/jumbo v3, "%40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1304
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lResult":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private _getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 415
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 416
    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, "lPageName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 421
    .local v0, "lHashCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 418
    .end local v0    # "lHashCode":I
    .end local v1    # "lPageName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "lPageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static _getPageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 1308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 1309
    .local v0, "lPageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1310
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1313
    .end local v0    # "lPageName":Ljava/lang/String;
    .local v1, "lPageName":Ljava/lang/String;
    :goto_0
    return-object v1

    .end local v1    # "lPageName":Ljava/lang/String;
    .restart local v0    # "lPageName":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .end local v0    # "lPageName":Ljava/lang/String;
    .restart local v1    # "lPageName":Ljava/lang/String;
    goto :goto_0
.end method

.method private _getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "lUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1376
    const-string/jumbo v2, "spm"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1377
    .local v1, "lSPM":Ljava/lang/String;
    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1380
    const-string/jumbo v2, "spm"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1387
    :cond_0
    :goto_0
    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1388
    const-string/jumbo v2, "spm_url"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1389
    invoke-static {v1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1391
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1392
    const-string/jumbo v2, "spm_url"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1399
    :cond_1
    :goto_1
    return-object v1

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/NBb;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1393
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1394
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, ""

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/NBb;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private declared-synchronized _putUTPageEventObjectToCache(Ljava/lang/String;Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 1
    .param p1, "aCacheKey"    # Ljava/lang/String;
    .param p2, "aPageObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized _releaseUTPageStateObject()V
    .locals 4

    .prologue
    .line 1363
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    .line 1364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    .line 1365
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1366
    .local v1, "lPCacheKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1367
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1373
    .end local v0    # "i":I
    .end local v1    # "lPCacheKey":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 1363
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized _removeUTPageEventObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :cond_0
    monitor-exit p0

    return-void

    .line 469
    .end local v0    # "lCacheKey":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static addPageChangerListener(Lcom/ut/mini/UTPageHitHelper$PageChangeListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ut/mini/UTPageHitHelper$PageChangeListener;

    .prologue
    .line 319
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    :cond_0
    return-void
.end method

.method private clearUTPageStateObject(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1404
    .local p1, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1405
    const-string/jumbo v0, "spm-cnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    const-string/jumbo v0, "spm-url"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    const-string/jumbo v0, "spm-pre"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v0, "utparam-cnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v0, "utparam-url"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v0, "utparam-pre"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    :cond_0
    return-void
.end method

.method static disPathcherPageChangerEvent(ILjava/lang/Object;)V
    .locals 2
    .param p0, "eventType"    # I
    .param p1, "pageObject"    # Ljava/lang/Object;

    .prologue
    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 332
    if-nez p0, :cond_0

    .line 333
    sget-object v1, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;

    invoke-interface {v1, p1}, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;->onPageAppear(Ljava/lang/Object;)V

    .line 331
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    sget-object v1, Lcom/ut/mini/UTPageHitHelper;->mPageChangerListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;

    invoke-interface {v1, p1}, Lcom/ut/mini/UTPageHitHelper$PageChangeListener;->onPageDisAppear(Ljava/lang/Object;)V

    goto :goto_1

    .line 338
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/ut/mini/UTPageHitHelper;
    .locals 1

    .prologue
    .line 344
    sget-object v0, Lcom/ut/mini/UTPageHitHelper;->s_instance:Lcom/ut/mini/UTPageHitHelper;

    return-object v0
.end method

.method private parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1500
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "lPageStateObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .param p3, "lUrlSPM"    # Ljava/lang/String;
    .param p4, "lUrlUtParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1418
    .local p2, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "spm-cnt"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1419
    .local v2, "spmcnt":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1420
    iput-object v2, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    .line 1427
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1428
    iput-object p3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    .line 1442
    :goto_1
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1443
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    .line 1448
    :goto_2
    const-string/jumbo v5, "utparam-cnt"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1449
    .local v4, "utparamcnt":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1450
    iput-object v4, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    .line 1456
    :goto_3
    const-string/jumbo v3, ""

    .line 1457
    .local v3, "utparam":Ljava/lang/String;
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1458
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    .line 1460
    :cond_0
    const-string/jumbo v5, "utparam-url"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1461
    invoke-virtual {p0, p4, v3}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1462
    iput-object v3, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    .line 1465
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1466
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    .line 1470
    :goto_4
    return-void

    .line 1423
    .end local v3    # "utparam":Ljava/lang/String;
    .end local v4    # "utparamcnt":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "spm_cnt"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmCnt:Ljava/lang/String;

    goto :goto_0

    .line 1430
    :cond_2
    const-string/jumbo v5, "spm-url"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1432
    .local v0, "spm0":Ljava/lang/String;
    const-string/jumbo v5, "spm_url"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1433
    .local v1, "spm1":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1434
    iput-object v0, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto :goto_1

    .line 1435
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1436
    iput-object v1, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto :goto_1

    .line 1438
    :cond_4
    const-string/jumbo v5, "spm"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto/16 :goto_1

    .line 1445
    .end local v0    # "spm0":Ljava/lang/String;
    .end local v1    # "spm1":Ljava/lang/String;
    :cond_5
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    goto/16 :goto_2

    .line 1452
    .restart local v4    # "utparamcnt":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    goto :goto_3

    .line 1468
    .restart local v3    # "utparam":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, ""

    iput-object v5, p1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamPre:Ljava/lang/String;

    goto :goto_4
.end method


# virtual methods
.method declared-synchronized _releaseSPMCacheObj(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCacheKey"    # Ljava/lang/String;

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_2

    .line 383
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x32

    if-ge v0, v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 385
    .local v1, "lPCacheKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 386
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 387
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    .end local v0    # "i":I
    .end local v1    # "lPCacheKey":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-void

    .line 378
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized _releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V
    .locals 4
    .param p1, "aPageEventObject"    # Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    .prologue
    .line 361
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->resetPropertiesWithoutSkipFlagAndH5Flag()V

    .line 362
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_2

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    .line 367
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mSkipClearPageObjectList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    .line 368
    .local v1, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    if-eqz v1, :cond_1

    .line 369
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageEventObjects:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    .end local v0    # "i":I
    .end local v1    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_2
    monitor-exit p0

    return-void

    .line 361
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeySpmUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyUtParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    return-object v0
.end method

.method public getLastCacheKeyUtParamCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getNextPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 349
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 350
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getNextPageProperties()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 352
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 1344
    monitor-enter p0

    :try_start_0
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 1345
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1347
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1349
    :cond_0
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1350
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    .end local v0    # "lCacheKey":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1352
    .restart local v0    # "lCacheKey":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    invoke-direct {v1}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;-><init>()V

    .line 1353
    .local v1, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 1354
    goto :goto_0

    .line 1357
    .end local v0    # "lCacheKey":Ljava/lang/String;
    .end local v1    # "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getPageProperties(Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    if-nez p1, :cond_1

    .line 645
    const/4 v2, 0x0

    .line 656
    :cond_0
    :goto_0
    return-object v2

    .line 647
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 648
    .local v2, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 649
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 651
    :cond_2
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 652
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v1

    .line 653
    .local v1, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 654
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method declared-synchronized getPageSpmPre(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1232
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1233
    :try_start_0
    const-string/jumbo v4, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1236
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v2

    .line 1238
    .local v2, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 1240
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1243
    :cond_2
    const-string/jumbo v4, ""

    .line 1245
    .local v4, "spmPre":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v3

    .line 1246
    .local v3, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v3, :cond_6

    .line 1247
    iget-boolean v0, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1248
    .local v0, "isBack":Z
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v5, :cond_8

    .line 1250
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v5, :cond_3

    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v5, :cond_4

    .line 1251
    :cond_3
    const/4 v0, 0x0

    .line 1255
    :cond_4
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1256
    .local v1, "isFromFragment":Z
    iget-boolean v5, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 1257
    const/4 v0, 0x0

    .line 1261
    :cond_5
    if-nez v0, :cond_7

    .line 1262
    iget-object v5, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1263
    iget-object v4, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 1274
    .end local v0    # "isBack":Z
    .end local v1    # "isFromFragment":Z
    :cond_6
    :goto_1
    if-nez v4, :cond_0

    .line 1275
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1266
    .restart local v0    # "isBack":Z
    .restart local v1    # "isFromFragment":Z
    :cond_7
    iget-object v4, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;

    goto :goto_1

    .line 1270
    .end local v1    # "isFromFragment":Z
    :cond_8
    iget-object v4, v3, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmPre:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1232
    .end local v0    # "isBack":Z
    .end local v2    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v3    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v4    # "spmPre":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method declared-synchronized getPageSpmUrl(Landroid/app/Activity;)Ljava/lang/String;
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1151
    monitor-enter p0

    if-nez p1, :cond_1

    .line 1152
    :try_start_0
    const-string/jumbo v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v9

    .line 1155
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v3

    .line 1157
    .local v3, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v10

    if-eqz v10, :cond_2

    sget-object v10, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 1159
    const-string/jumbo v9, ""

    goto :goto_0

    .line 1163
    :cond_2
    const-string/jumbo v9, ""

    .line 1166
    .local v9, "spmUrl":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v6

    .line 1167
    .local v6, "lUrl":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 1168
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1169
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_3

    .line 1170
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 1174
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    if-eqz v6, :cond_4

    .line 1176
    :try_start_2
    invoke-direct {p0, v6}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 1183
    :cond_4
    :goto_1
    :try_start_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1188
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v5

    .line 1189
    .local v5, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v5, :cond_8

    .line 1190
    iget-boolean v1, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1191
    .local v1, "isBack":Z
    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    if-nez v10, :cond_c

    .line 1193
    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    if-nez v10, :cond_5

    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    if-eqz v10, :cond_6

    .line 1194
    :cond_5
    const/4 v1, 0x0

    .line 1198
    :cond_6
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1199
    .local v2, "isFromFragment":Z
    iget-boolean v10, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    if-eqz v10, :cond_7

    if-eqz v2, :cond_7

    .line 1200
    const/4 v1, 0x0

    .line 1204
    :cond_7
    if-nez v1, :cond_b

    .line 1205
    invoke-virtual {v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v4

    .line 1206
    .local v4, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "spm-url"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1208
    .local v7, "spm0":Ljava/lang/String;
    const-string/jumbo v10, "spm_url"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1209
    .local v8, "spm1":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1210
    move-object v9, v7

    .line 1225
    .end local v1    # "isBack":Z
    .end local v2    # "isFromFragment":Z
    .end local v4    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "spm0":Ljava/lang/String;
    .end local v8    # "spm1":Ljava/lang/String;
    :cond_8
    :goto_2
    if-nez v9, :cond_0

    .line 1226
    const-string/jumbo v9, ""

    goto/16 :goto_0

    .line 1211
    .restart local v1    # "isBack":Z
    .restart local v2    # "isFromFragment":Z
    .restart local v4    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7    # "spm0":Ljava/lang/String;
    .restart local v8    # "spm1":Ljava/lang/String;
    :cond_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1212
    move-object v9, v8

    goto :goto_2

    .line 1214
    :cond_a
    const-string/jumbo v10, "spm"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "spmUrl":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1216
    .restart local v9    # "spmUrl":Ljava/lang/String;
    goto :goto_2

    .line 1217
    .end local v4    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "spm0":Ljava/lang/String;
    .end local v8    # "spm1":Ljava/lang/String;
    :cond_b
    iget-object v9, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    goto :goto_2

    .line 1221
    .end local v2    # "isFromFragment":Z
    :cond_c
    iget-object v9, v5, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v1    # "isBack":Z
    .end local v5    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catch_0
    move-exception v10

    goto :goto_1

    .line 1151
    .end local v3    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v6    # "lUrl":Landroid/net/Uri;
    .end local v9    # "spmUrl":Ljava/lang/String;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public declared-synchronized getPageUrl(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 700
    monitor-enter p0

    if-nez p1, :cond_1

    .line 707
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 703
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 704
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 705
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 700
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized isH52001(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 425
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 426
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 427
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    sget-object v2, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_0

    .line 429
    const/4 v1, 0x1

    .line 433
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pageAppear(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 482
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pageAppear(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;

    .prologue
    .line 604
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    monitor-exit p0

    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized pageAppear(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aCustomPageName"    # Ljava/lang/String;
    .param p3, "aIsDonotSkipFlag"    # Z

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/NBb;->d()V

    .line 488
    if-eqz p1, :cond_c

    .line 490
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, "lPageCacheKey":Ljava/lang/String;
    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_1

    .line 601
    .end local v7    # "lPageCacheKey":Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 496
    .restart local v7    # "lPageCacheKey":Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 497
    const-string/jumbo v13, "lost 2001"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Last page requires leave("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ")."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v6

    .line 501
    .local v6, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    if-nez p3, :cond_3

    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 502
    const-string/jumbo v13, "skip page[pageAppear]"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "page name:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    .end local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v7    # "lPageCacheKey":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 506
    .restart local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v7    # "lPageCacheKey":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/ut/mini/UTPageHitHelper;->disPathcherPageChangerEvent(ILjava/lang/Object;)V

    .line 507
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pageAppear:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/UTVariables;->getH5Url()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "lH5Url":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 513
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/ut/mini/UTVariables;->setBackupH5Url(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    :try_start_3
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 519
    .local v12, "lUrl":Landroid/net/Uri;
    const-string/jumbo v13, "spm"

    invoke-virtual {v12, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 520
    .local v10, "lSpm":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    const-string/jumbo v14, "spm"

    invoke-interface {v13, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    .end local v10    # "lSpm":Ljava/lang/String;
    .end local v12    # "lUrl":Landroid/net/Uri;
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 528
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    .line 532
    .local v3, "lCurPage":Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/taobao/ju/track/JTrack$Page;->getPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, "lPageName":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 535
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "activity"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 536
    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x8

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 538
    :cond_5
    const-string/jumbo v13, "JTrack"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getPageName:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 539
    move-object v3, v8

    .line 545
    .end local v8    # "lPageName":Ljava/lang/String;
    :cond_6
    :goto_2
    :try_start_6
    invoke-static/range {p2 .. p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 546
    move-object/from16 v3, p2

    .line 548
    :cond_7
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 549
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v3

    .line 551
    :cond_8
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;

    .line 552
    invoke-virtual {v6, v3}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageName(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v6, v14, v15}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStayTimstamp(J)V

    .line 554
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v13

    invoke-virtual {v13}, Lcom/ut/mini/UTVariables;->getRefPage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setRefPage(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageAppearCalled()V

    .line 557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz v13, :cond_9

    .line 559
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    .line 561
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-virtual {v6, v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setNextPageProperties(Ljava/util/Map;)V

    .line 563
    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v9

    .line 564
    .local v9, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_b

    .line 565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-virtual {v6, v13}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    .line 573
    .end local v9    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 574
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    .line 576
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    if-eqz v13, :cond_a

    .line 578
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v11

    .line 579
    .local v11, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v11, :cond_a

    .line 580
    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 581
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z

    .line 586
    .end local v11    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ut/mini/UTPageHitHelper;->_clearUTPageEventObjectCache(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 588
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lcom/ut/mini/UTPageHitHelper;->_putUTPageEventObjectToCache(Ljava/lang/String;Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 592
    if-eqz p3, :cond_0

    invoke-virtual {v6}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 593
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v11

    .line 594
    .restart local v11    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v11, :cond_0

    .line 595
    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    goto/16 :goto_0

    .line 521
    .end local v3    # "lCurPage":Ljava/lang/String;
    .end local v11    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catch_0
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 567
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v3    # "lCurPage":Ljava/lang/String;
    .restart local v9    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v5, "lNewPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5, v9}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 570
    invoke-virtual {v6, v5}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V

    goto :goto_3

    .line 599
    .end local v3    # "lCurPage":Ljava/lang/String;
    .end local v4    # "lH5Url":Ljava/lang/String;
    .end local v5    # "lNewPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v7    # "lPageCacheKey":Ljava/lang/String;
    .end local v9    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v13, "pageAppear"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "The page object should not be null"

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .restart local v3    # "lCurPage":Ljava/lang/String;
    .restart local v4    # "lH5Url":Ljava/lang/String;
    .restart local v6    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v7    # "lPageCacheKey":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto/16 :goto_2
.end method

.method pageAppearByAuto(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->pageAppear(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pageDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1327
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, "lCacheKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    :cond_0
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1332
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mClearUTPageStateObjectList:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 1334
    :cond_1
    invoke-direct {p0}, Lcom/ut/mini/UTPageHitHelper;->_releaseUTPageStateObject()V

    .line 1335
    return-void
.end method

.method public declared-synchronized pageDisAppear(Ljava/lang/Object;)V
    .locals 1
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    monitor-exit p0

    return-void

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V
    .locals 48
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aTrackerInstance"    # Lcom/ut/mini/UTTracker;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/NBb;->d()V

    .line 819
    if-eqz p1, :cond_33

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mCurrentPageCacheKey:Ljava/lang/String;

    move-object/from16 v43, v0

    if-nez v43, :cond_0

    .line 822
    const-string/jumbo v43, "pageDisAppear"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "UT has already recorded the page disappear event on this page"

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    :goto_0
    monitor-exit p0

    return-void

    .line 826
    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v22

    .line 828
    .local v22, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isPageAppearCalled()Z

    move-result v43

    if-eqz v43, :cond_30

    .line 829
    invoke-static {}, Lcom/ut/mini/module/UTOperationStack;->getInstance()Lcom/ut/mini/module/UTOperationStack;

    move-result-object v43

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "pageDisAppear:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v45

    invoke-static/range {v45 .. v45}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/ut/mini/module/UTOperationStack;->addAction(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v43

    if-eqz v43, :cond_3

    sget-object v43, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_3

    .line 832
    const/16 v43, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatusCode()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mBackupNextPageProperties:Ljava/util/Map;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 835
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v43

    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/ut/mini/UTVariables;->getBackupH5Url()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Lcom/ut/mini/UTVariables;->setH5Url(Ljava/lang/String;)V

    .line 838
    :cond_1
    const/16 v43, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatusCode()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isH5Called()Z

    move-result v43

    if-eqz v43, :cond_3

    .line 841
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/ut/mini/UTPageHitHelper;->_clearPageDisAppearContext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 818
    .end local v22    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v43

    monitor-exit p0

    throw v43

    .line 848
    .restart local v22    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v44

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStayTimstamp()J

    move-result-wide v46

    sub-long v26, v44, v46

    .line 850
    .local v26, "lPageStayConsume":J
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v43, v0

    if-eqz v43, :cond_b

    .line 851
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->disPathcherPageChangerEvent(ILjava/lang/Object;)V

    .line 853
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v43

    if-eqz v43, :cond_4

    .line 854
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    if-eqz v43, :cond_4

    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v43

    if-eqz v43, :cond_4

    .line 856
    const-string/jumbo v44, "pageDisAppear"

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "uri="

    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    aput-object v43, v45, v46

    invoke-static/range {v44 .. v45}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 861
    :cond_4
    const/16 v16, 0x0

    .line 863
    .local v16, "lIsNeedRefreshUri":Z
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v18

    .line 864
    .local v18, "lPEOUrl":Landroid/net/Uri;
    const/16 v19, 0x0

    .line 865
    .local v19, "lPEOUrlString":Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 866
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    .line 868
    :cond_5
    const/16 v21, 0x0

    .line 870
    .local v21, "lPOUrlString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 871
    .local v20, "lPOUrl":Landroid/net/Uri;
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 872
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v8, :cond_6

    .line 873
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 876
    :cond_6
    if-eqz v20, :cond_7

    .line 877
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    .line 880
    :cond_7
    if-eqz v19, :cond_8

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_9

    :cond_8
    if-eqz v21, :cond_a

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_a

    .line 882
    :cond_9
    const/16 v16, 0x1

    .line 885
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v43

    if-nez v43, :cond_b

    if-eqz v16, :cond_b

    .line 886
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageUrl(Landroid/net/Uri;)V

    .line 890
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "lIsNeedRefreshUri":Z
    .end local v18    # "lPEOUrl":Landroid/net/Uri;
    .end local v19    # "lPEOUrlString":Ljava/lang/String;
    .end local v20    # "lPOUrl":Landroid/net/Uri;
    .end local v21    # "lPOUrlString":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v23

    .line 891
    .local v23, "lPageName":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getRefPage()Ljava/lang/String;

    move-result-object v29

    .line 892
    .local v29, "lRefPage":Ljava/lang/String;
    if-eqz v29, :cond_c

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v43

    if-nez v43, :cond_d

    .line 893
    :cond_c
    const-string/jumbo v29, "-"

    .line 896
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 898
    .local v24, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v24, :cond_e

    .line 899
    new-instance v24, Ljava/util/HashMap;

    .end local v24    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    .restart local v24    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    :try_start_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v43, v0

    if-eqz v43, :cond_13

    .line 905
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 906
    .local v12, "lArgsUri":Landroid/net/Uri;
    if-eqz v12, :cond_f

    .line 907
    const-string/jumbo v43, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "uri:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    :cond_f
    const/4 v11, 0x0

    .line 911
    .local v11, "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_10

    .line 913
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-static {v0, v12}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v11

    .line 915
    const-string/jumbo v43, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "getArgsMap by pagename:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageName()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    :cond_10
    if-eqz v11, :cond_11

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v43

    if-nez v43, :cond_12

    .line 919
    :cond_11
    move-object/from16 v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-static {v0, v12}, Lcom/taobao/ju/track/JTrack$Page;->getArgsMap(Landroid/app/Activity;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v11

    .line 921
    const-string/jumbo v43, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "getArgsMap by activity:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v47

    invoke-static/range {v47 .. v47}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    :cond_12
    if-eqz v11, :cond_13

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v43

    if-lez v43, :cond_13

    .line 926
    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 927
    const-string/jumbo v43, "JTrack"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "ArgsMap:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static {v11}, Lc8/aCb;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 934
    .end local v11    # "lArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "lArgsUri":Landroid/net/Uri;
    :cond_13
    :goto_1
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v43

    if-eqz v43, :cond_14

    .line 935
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 941
    :cond_14
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/ut/mini/IUTPageTrack;

    move/from16 v43, v0

    if-eqz v43, :cond_17

    .line 942
    move-object/from16 v0, p1

    check-cast v0, Lcom/ut/mini/IUTPageTrack;

    move-object/from16 v33, v0

    .line 944
    .local v33, "lUTActivity":Lcom/ut/mini/IUTPageTrack;
    invoke-interface/range {v33 .. v33}, Lcom/ut/mini/IUTPageTrack;->getReferPage()Ljava/lang/String;

    move-result-object v10

    .line 945
    .local v10, "lARefPage":Ljava/lang/String;
    invoke-static {v10}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_15

    .line 946
    move-object/from16 v29, v10

    .line 949
    :cond_15
    invoke-interface/range {v33 .. v33}, Lcom/ut/mini/IUTPageTrack;->getPageProperties()Ljava/util/Map;

    move-result-object v25

    .line 951
    .local v25, "lPageProperties2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v25, :cond_16

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->size()I

    move-result v43

    if-lez v43, :cond_16

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    move-object/from16 v24, v0

    .line 957
    :cond_16
    invoke-interface/range {v33 .. v33}, Lcom/ut/mini/IUTPageTrack;->getPageName()Ljava/lang/String;

    move-result-object v34

    .line 958
    .local v34, "lUTPageName":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_17

    .line 959
    move-object/from16 v23, v34

    .line 963
    .end local v10    # "lARefPage":Ljava/lang/String;
    .end local v25    # "lPageProperties2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v33    # "lUTActivity":Lcom/ut/mini/IUTPageTrack;
    .end local v34    # "lUTPageName":Ljava/lang/String;
    :cond_17
    const-string/jumbo v37, ""

    .line 964
    .local v37, "lUrlSPM":Ljava/lang/String;
    const-string/jumbo v38, ""

    .line 966
    .local v38, "lUrlUtParam":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v36

    .line 967
    .local v36, "lUrl":Landroid/net/Uri;
    if-eqz v36, :cond_1e

    .line 970
    :try_start_5
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 971
    .local v14, "lEMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_getSpmByUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v31

    .line 973
    .local v31, "lSPM":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_19

    .line 974
    const/16 v39, 0x0

    .line 975
    .local v39, "mIsSPMSkip":Z
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 977
    .local v13, "lCacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    move-object/from16 v0, v31

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_18

    .line 979
    const/16 v39, 0x1

    .line 982
    :cond_18
    if-nez v39, :cond_19

    .line 983
    const-string/jumbo v43, "spm"

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mSPMObjectMap:Ljava/util/Map;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v31

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ut/mini/UTPageHitHelper;->_releaseSPMCacheObj(Ljava/lang/String;)V

    .line 988
    .end local v13    # "lCacheKey":Ljava/lang/String;
    .end local v39    # "mIsSPMSkip":Z
    :cond_19
    move-object/from16 v37, v31

    .line 989
    const-string/jumbo v43, "utparam"

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 990
    const-string/jumbo v43, "scm"

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 991
    .local v30, "lSCM":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_1a

    .line 992
    const-string/jumbo v43, "scm"

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    :cond_1a
    const-string/jumbo v43, "pg1stepk"

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 996
    .local v40, "pg1stepk":Ljava/lang/String;
    invoke-static/range {v40 .. v40}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_1b

    .line 997
    const-string/jumbo v43, "pg1stepk"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :cond_1b
    const-string/jumbo v43, "point"

    move-object/from16 v0, v36

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1002
    .local v28, "lPoint":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_1c

    .line 1003
    const-string/jumbo v43, "issb"

    const-string/jumbo v44, "1"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    :cond_1c
    invoke-static/range {v36 .. v36}, Lcom/ut/mini/UTPageHitHelper;->_getOutsideTTID(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 1007
    .local v17, "lOutsideTTID":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_1d

    .line 1008
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/lzb;->setOutsideTTID(Ljava/lang/String;)V

    .line 1011
    :cond_1d
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v43

    if-lez v43, :cond_1e

    .line 1012
    move-object/from16 v0, v24

    invoke-interface {v0, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1020
    .end local v14    # "lEMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "lOutsideTTID":Ljava/lang/String;
    .end local v28    # "lPoint":Ljava/lang/String;
    .end local v30    # "lSCM":Ljava/lang/String;
    .end local v31    # "lSPM":Ljava/lang/String;
    .end local v40    # "pg1stepk":Ljava/lang/String;
    :cond_1e
    :goto_2
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v35

    .line 1021
    .local v35, "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v35, :cond_20

    .line 1023
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v43

    if-eqz v43, :cond_26

    sget-object v43, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_26

    .line 1025
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1f

    .line 1026
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1028
    :cond_1f
    const/16 v43, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1056
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKey(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mSpmUrl:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeySpmUrl(Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamUrl:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParam(Ljava/lang/String;)V

    .line 1059
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mUtparamCnt:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->setLastCacheKeyUtParamCnt(Ljava/lang/String;)V

    .line 1060
    const-string/jumbo v43, ""

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "mLastCacheKey:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ",mLastCacheKeySpmUrl:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ",mLastCacheKeyUtParam:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ",mLastCacheKeyUtParamCnt:"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    move-object/from16 v47, v0

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1064
    const/16 v43, 0x1

    move/from16 v0, v43

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1065
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1070
    :cond_20
    :try_start_7
    invoke-static {}, Lc8/Szb;->getInstance()Lc8/Szb;

    move-result-object v43

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageUrl()Landroid/net/Uri;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/Szb;->getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    .line 1071
    .local v32, "lTPKString":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_21

    .line 1072
    const-string/jumbo v43, "_tpk"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1081
    .end local v32    # "lTPKString":Ljava/lang/String;
    :cond_21
    :goto_4
    :try_start_8
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v43

    if-eqz v43, :cond_22

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v43

    const-string/jumbo v44, "_allow_override_value"

    invoke-interface/range {v43 .. v44}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_22

    .line 1083
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1084
    const-string/jumbo v43, "_allow_override_value"

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    :cond_22
    const-string/jumbo v43, "Page_Webview"

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_25

    .line 1089
    if-eqz v36, :cond_25

    .line 1090
    invoke-virtual/range {v36 .. v36}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1091
    .local v41, "temp":Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_25

    .line 1092
    const-string/jumbo v43, "?"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1093
    .local v7, "index":I
    move-object/from16 v42, v41

    .line 1094
    .local v42, "urlForPageName":Ljava/lang/String;
    const/16 v43, -0x1

    move/from16 v0, v43

    if-eq v7, v0, :cond_23

    .line 1095
    const/16 v43, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v42

    .line 1097
    :cond_23
    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v43

    if-nez v43, :cond_24

    .line 1098
    move-object/from16 v23, v42

    .line 1100
    :cond_24
    const-string/jumbo v43, ""

    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "temp"

    aput-object v46, v44, v45

    const/16 v45, 0x1

    aput-object v41, v44, v45

    const/16 v45, 0x2

    const-string/jumbo v46, "urlForPageName"

    aput-object v46, v44, v45

    const/16 v45, 0x3

    aput-object v42, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    .end local v7    # "index":I
    .end local v41    # "temp":Ljava/lang/String;
    .end local v42    # "urlForPageName":Ljava/lang/String;
    :cond_25
    new-instance v15, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v15, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setReferPage(Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setDurationOnPage(J)Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1112
    const-string/jumbo v43, "_priority"

    const-string/jumbo v44, "4"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v15, v0, v1}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->setProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 1117
    invoke-static {}, Lcom/ut/mini/UTVariables;->getInstance()Lcom/ut/mini/UTVariables;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTVariables;->setRefPage(Ljava/lang/String;)V

    .line 1119
    if-nez p2, :cond_2d

    .line 1120
    new-instance v43, Ljava/lang/NullPointerException;

    const-string/jumbo v44, "Tracker instance is null,please init sdk first."

    invoke-direct/range {v43 .. v44}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v43

    .line 1014
    .end local v15    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    .end local v35    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catch_0
    move-exception v6

    .line 1015
    .local v6, "e":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 1030
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v35    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :cond_26
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageEventObjectCacheKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1031
    .local v9, "isFromFragment":Z
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    move/from16 v43, v0

    if-nez v43, :cond_2c

    .line 1034
    const-string/jumbo v43, "1"

    const-string/jumbo v44, "skipbk"

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_27

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z

    move/from16 v43, v0

    if-nez v43, :cond_27

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    move/from16 v43, v0

    if-eqz v43, :cond_28

    .line 1037
    :cond_27
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1038
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z

    .line 1042
    :cond_28
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    move/from16 v43, v0

    if-eqz v43, :cond_29

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsFrame:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2a

    if-eqz v9, :cond_2a

    .line 1043
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v24

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ut/mini/UTPageHitHelper;->refreshUTPageStateObject(Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    :cond_2a
    :goto_5
    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2b

    .line 1052
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    .line 1054
    :cond_2b
    move-object/from16 v0, v35

    invoke-virtual {v0, v9}, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->getPageStatMap(Z)Ljava/util/Map;

    move-result-object v43

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_3

    .line 1047
    :cond_2c
    const/16 v43, 0x0

    move/from16 v0, v43

    move-object/from16 v1, v35

    iput-boolean v0, v1, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsBack:Z

    .line 1048
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->clearUTPageStateObject(Ljava/util/Map;)V

    goto :goto_5

    .line 1074
    .end local v9    # "isFromFragment":Z
    :catch_1
    move-exception v6

    .line 1075
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 1122
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v15    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    :cond_2d
    invoke-virtual {v15}, Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;->build()Ljava/util/Map;

    move-result-object v43

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 1124
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v43, v0

    if-nez v43, :cond_2e

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/app/Fragment;

    move/from16 v43, v0

    if-nez v43, :cond_2e

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    move/from16 v43, v0

    if-eqz v43, :cond_2f

    .line 1127
    :cond_2e
    invoke-static {}, Lcom/ut/mini/internal/UTPageMappingTrack;->getInstance()Lcom/ut/mini/internal/UTPageMappingTrack;

    move-result-object v43

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v44

    invoke-static/range {v44 .. v44}, Lcom/ali/mobisecenhance/ReflectMap;->getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/ut/mini/internal/UTPageMappingTrack;->putPageMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .end local v15    # "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTPageHitBuilder;
    .end local v23    # "lPageName":Ljava/lang/String;
    .end local v24    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "lPageStayConsume":J
    .end local v29    # "lRefPage":Ljava/lang/String;
    .end local v35    # "lUTPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    .end local v36    # "lUrl":Landroid/net/Uri;
    .end local v37    # "lUrlSPM":Ljava/lang/String;
    .end local v38    # "lUrlUtParam":Ljava/lang/String;
    :cond_2f
    :goto_6
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->isSkipPage()Z

    move-result v43

    if-eqz v43, :cond_31

    .line 1136
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    .line 1144
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/ut/mini/UTPageHitHelper;->_clearPageDisAppearContext()V

    goto/16 :goto_0

    .line 1131
    :cond_30
    const-string/jumbo v43, "UT"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v47, "Please call pageAppear first("

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-static/range {p1 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_getPageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    const-string/jumbo v47, ")."

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 1137
    :cond_31
    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v43

    if-eqz v43, :cond_32

    sget-object v43, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    invoke-virtual/range {v22 .. v22}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_32

    .line 1140
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTPageHitHelper;->_releaseSkipFlagAndH5FlagPageObject(Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;)V

    goto :goto_7

    .line 1142
    :cond_32
    invoke-direct/range {p0 .. p1}, Lcom/ut/mini/UTPageHitHelper;->_removeUTPageEventObject(Ljava/lang/Object;)V

    goto :goto_7

    .line 1146
    .end local v22    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_33
    const-string/jumbo v43, "pageDisAppear"

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const-string/jumbo v46, "The page object should not be null"

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .restart local v22    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v23    # "lPageName":Ljava/lang/String;
    .restart local v24    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "lPageStayConsume":J
    .restart local v29    # "lRefPage":Ljava/lang/String;
    :catch_2
    move-exception v43

    goto/16 :goto_1
.end method

.method pageDisAppearByAuto(Landroid/app/Activity;)V
    .locals 1
    .param p1, "aActivity"    # Landroid/app/Activity;

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z

    if-eqz v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->pageDisAppear(Ljava/lang/Object;Lcom/ut/mini/UTTracker;)V

    goto :goto_0
.end method

.method public pageSwitchBackground()V
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageStateObjects:Ljava/util/Map;

    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSwitchBackground:Z

    .line 1341
    :cond_0
    return-void
.end method

.method public refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "utParam"    # Ljava/lang/String;
    .param p2, "targetUtParam"    # Ljava/lang/String;

    .prologue
    .line 1474
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1494
    .end local p2    # "targetUtParam":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 1477
    .restart local p2    # "targetUtParam":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1478
    .local v2, "utParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1482
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p2, p1

    .line 1483
    goto :goto_0

    .line 1485
    :cond_2
    invoke-direct {p0, p2}, Lcom/ut/mini/UTPageHitHelper;->parseJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1486
    .local v1, "targetUtParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    move-object p2, p1

    .line 1487
    goto :goto_0

    .line 1490
    :cond_4
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1491
    invoke-static {v1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    .line 1492
    .end local v1    # "targetUtParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "utParamMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1494
    const-string/jumbo p2, ""

    goto :goto_0
.end method

.method declared-synchronized setH5Called(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 437
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 438
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 439
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageStatus()Lcom/ut/mini/UTPageStatus;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setH5Called()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setLastCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKey"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKey:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setLastCacheKeySpmUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeySpmUrl"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeySpmUrl:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setLastCacheKeyUtParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeyUtParam"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParam:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setLastCacheKeyUtParamCnt(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastCacheKeyUtParamCnt"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper;->mLastCacheKeyUtParamCnt:Ljava/lang/String;

    .line 156
    return-void
.end method

.method declared-synchronized setPageStatusCode(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageStatusCode"    # I

    .prologue
    .line 753
    monitor-enter p0

    if-nez p1, :cond_0

    .line 758
    :goto_0
    monitor-exit p0

    return-void

    .line 756
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 757
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStatusCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 753
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized skipBack(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 776
    monitor-enter p0

    if-nez p1, :cond_1

    .line 784
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 780
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    .line 781
    .local v0, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v0, :cond_0

    .line 782
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 776
    .end local v0    # "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized skipBackForever(Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "skipback"    # Z

    .prologue
    .line 791
    monitor-enter p0

    if-nez p1, :cond_1

    .line 799
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 795
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getOrNewUTPageStateObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;

    move-result-object v0

    .line 796
    .local v0, "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    if-eqz v0, :cond_0

    .line 797
    iput-boolean p2, v0, Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;->mIsSkipBackForever:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 791
    .end local v0    # "lPageStateObject":Lcom/ut/mini/UTPageHitHelper$UTPageStateObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized skipNextPageBack()V
    .locals 1

    .prologue
    .line 787
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageSkipBack:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized skipPage(Ljava/lang/Object;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 768
    monitor-enter p0

    if-nez p1, :cond_0

    .line 773
    :goto_0
    monitor-exit p0

    return-void

    .line 771
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 772
    .local v0, "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setToSkipPage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 768
    .end local v0    # "lPageEventObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized turnOffAutoPageTrack()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 399
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper;->mIsTurnOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateNextPageProperties(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 721
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 722
    .local v0, "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 723
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 724
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    .end local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 726
    .restart local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v3, "utparam-url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    .local v1, "pageUtparam":Ljava/lang/String;
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    .line 728
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v3, "utparam-url"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 720
    .end local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pageUtparam":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized updateNextPageUtparam(Ljava/lang/String;)V
    .locals 5
    .param p1, "aPageUtparam"    # Ljava/lang/String;

    .prologue
    .line 736
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 737
    const-string/jumbo v0, ""

    .line 738
    .local v0, "pageUtparam":Ljava/lang/String;
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 739
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    const-string/jumbo v4, "utparam-url"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pageUtparam":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 743
    .restart local v0    # "pageUtparam":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 744
    .local v2, "targetPageUtparam":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 745
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "utparam-url"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    iget-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    .end local v0    # "pageUtparam":Ljava/lang/String;
    .end local v1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "targetPageUtparam":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 741
    .restart local v0    # "pageUtparam":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ut/mini/UTPageHitHelper;->mNextPageProperties:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 736
    .end local v0    # "pageUtparam":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized updatePageName(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageName"    # Ljava/lang/String;

    .prologue
    .line 683
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 686
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 687
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageName(Ljava/lang/String;)V

    .line 688
    iput-object p2, p0, Lcom/ut/mini/UTPageHitHelper;->mCurPage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 683
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 625
    :cond_0
    const-string/jumbo v4, ""

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "failed to update project properties"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    :goto_0
    monitor-exit p0

    return-void

    .line 628
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v0, "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 630
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v2

    .line 631
    .local v2, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->getPageProperties()Ljava/util/Map;

    move-result-object v3

    .line 632
    .local v3, "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 633
    invoke-virtual {v2, v0}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 624
    .end local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .end local v3    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 635
    .restart local v0    # "lAMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    .restart local v3    # "lPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 636
    .local v1, "lNewPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 637
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 638
    invoke-virtual {v2, v1}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageProperties(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updatePageProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 615
    .local p1, "aProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper;->mPageProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :cond_0
    monitor-exit p0

    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updatePageStatus(Ljava/lang/Object;Lcom/ut/mini/UTPageStatus;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageStatus"    # Lcom/ut/mini/UTPageStatus;

    .prologue
    .line 712
    monitor-enter p0

    if-nez p1, :cond_0

    .line 717
    :goto_0
    monitor-exit p0

    return-void

    .line 715
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 716
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 712
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePageUrl(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 2
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aUrl"    # Landroid/net/Uri;

    .prologue
    .line 692
    monitor-enter p0

    if-nez p1, :cond_0

    .line 697
    :goto_0
    monitor-exit p0

    return-void

    .line 695
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->_getOrNewAUTPageEventObject(Ljava/lang/Object;)Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;

    move-result-object v0

    .line 696
    .local v0, "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    invoke-virtual {v0, p2}, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->setPageUrl(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 692
    .end local v0    # "lPEObject":Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updatePageUtparam(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "aPageObject"    # Ljava/lang/Object;
    .param p2, "aPageUtparam"    # Ljava/lang/String;

    .prologue
    .line 660
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 674
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 663
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ut/mini/UTPageHitHelper;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 664
    .local v0, "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, ""

    .line 665
    .local v1, "pageUtparamCnt":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 666
    const-string/jumbo v4, "utparam-cnt"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pageUtparamCnt":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 668
    .restart local v1    # "pageUtparamCnt":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2, v1}, Lcom/ut/mini/UTPageHitHelper;->refreshUtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "targetPageUtparamCnt":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 670
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 671
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "utparam-cnt"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-virtual {p0, p1, v2}, Lcom/ut/mini/UTPageHitHelper;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 660
    .end local v0    # "pageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "pageUtparamCnt":Ljava/lang/String;
    .end local v2    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "targetPageUtparamCnt":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
