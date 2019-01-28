.class public Lc8/qng;
.super Ljava/lang/Object;
.source "AntImpl.java"

# interfaces
.implements Lc8/Sng;
.implements Lc8/gng;
.implements Lc8/gog;
.implements Lc8/ing;
.implements Lc8/jng;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/png;
    }
.end annotation


# instance fields
.field volatile mAntEvaluator:Lc8/zng;

.field mAntNotifier:Lc8/Xng;

.field mAntStore:Lc8/Ong;

.field volatile mAntUpdate:Lc8/Cng;

.field mContext:Landroid/content/Context;

.field mInitialized:Z

.field volatile mNativeBucketFetcher:Lc8/rng;

.field mSyncEnable:Z

.field volatile mWebBucketFetcher:Lc8/rng;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/qng;->mSyncEnable:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/qng;->mInitialized:Z

    .line 73
    new-instance v0, Lc8/Xng;

    invoke-direct {v0}, Lc8/Xng;-><init>()V

    iput-object v0, p0, Lc8/qng;->mAntNotifier:Lc8/Xng;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lc8/nng;)V
    .locals 0
    .param p1, "x0"    # Lc8/nng;

    .prologue
    .line 48
    invoke-direct {p0}, Lc8/qng;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lc8/qng;Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
    .locals 0
    .param p0, "x0"    # Lc8/qng;
    .param p1, "x1"    # Landroid/app/Application;
    .param p2, "x2"    # Lcom/tmall/wireless/ant/lifecycle/FetchModel;
    .param p3, "x3"    # Lc8/Rng;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lc8/qng;->doInnerInit(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V

    return-void
.end method

.method private doInnerInit(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "fetchModel"    # Lcom/tmall/wireless/ant/lifecycle/FetchModel;
    .param p3, "builder"    # Lc8/Rng;

    .prologue
    .line 127
    invoke-static {p1}, Lc8/Ong;->readAntBasicConfig(Landroid/content/Context;)V

    .line 130
    invoke-direct {p0, p2}, Lc8/qng;->isPullFetchModel(Lcom/tmall/wireless/ant/lifecycle/FetchModel;)Z

    move-result v2

    .line 132
    .local v2, "pullFetchModel":Z
    if-eqz v2, :cond_1

    const-string/jumbo v3, "pull"

    :goto_0
    sput-object v3, Lc8/mog;->CURRENT_FETCH_MODEL:Ljava/lang/String;

    .line 134
    invoke-static {p1, v2}, Lc8/Bng;->createAntStore(Landroid/content/Context;Z)Lc8/Ong;

    move-result-object v3

    iput-object v3, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    .line 135
    iget-object v3, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    iget-object v4, p0, Lc8/qng;->mAntNotifier:Lc8/Xng;

    invoke-static {p1, v3, v4, p3, v2}, Lc8/Bng;->createAntUpdate(Landroid/content/Context;Lc8/Ong;Lc8/Xng;Lc8/Rng;Z)Lc8/Cng;

    move-result-object v3

    iput-object v3, p0, Lc8/qng;->mAntUpdate:Lc8/Cng;

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, "orangeKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 139
    iget-object v3, p3, Lc8/Rng;->timeStamp:Lc8/fog;

    sput-object v3, Lc8/Vng;->TIME_STAMP:Lc8/fog;

    .line 140
    iget-object v1, p3, Lc8/Rng;->orangeKey:Ljava/util/Map;

    .line 141
    iget-object v3, p3, Lc8/Rng;->deviceInfoFetcher:Lc8/eog;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, p3, Lc8/Rng;->deviceInfoFetcher:Lc8/eog;

    sput-object v3, Lc8/eog;->sDeviceInfoFetcher:Lc8/eog;

    .line 146
    :cond_0
    iget-object v3, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v3, v1}, Lc8/Ong;->fetchOrangeConfig(Ljava/util/Map;)V

    .line 149
    invoke-static {p1, v2}, Lc8/Bng;->createAntEvaluator(Landroid/content/Context;Z)Lc8/zng;

    move-result-object v3

    iput-object v3, p0, Lc8/qng;->mAntEvaluator:Lc8/zng;

    .line 152
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v3

    invoke-virtual {v3}, Lc8/iog;->loadLocalServerABTestInfo()V

    .line 155
    new-instance v0, Lc8/ong;

    invoke-direct {v0, p0}, Lc8/ong;-><init>(Lc8/qng;)V

    .line 176
    .local v0, "bucketFetcherReader":Lc8/sng;
    invoke-static {p1, v0, v2}, Lc8/Bng;->createNativeBucketFetcher(Landroid/content/Context;Lc8/sng;Z)Lc8/tng;

    move-result-object v3

    iput-object v3, p0, Lc8/qng;->mNativeBucketFetcher:Lc8/rng;

    .line 177
    invoke-static {p1, v0, v2}, Lc8/Bng;->createWebBucketFetcher(Landroid/content/Context;Lc8/sng;Z)Lc8/ung;

    move-result-object v3

    iput-object v3, p0, Lc8/qng;->mWebBucketFetcher:Lc8/rng;

    .line 179
    iget-object v3, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v3}, Lc8/Ong;->loadLocalData()V

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/qng;->mInitialized:Z

    .line 181
    const-string/jumbo v3, "ant_init_finish_action"

    invoke-direct {p0, v3}, Lc8/qng;->notifyBroadcast(Ljava/lang/String;)V

    .line 183
    return-void

    .line 132
    .end local v0    # "bucketFetcherReader":Lc8/sng;
    .end local v1    # "orangeKeyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v3, "push"

    goto :goto_0
.end method

.method public static getInstance()Lc8/qng;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lc8/png;->access$100()Lc8/qng;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/qng;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPullFetchModel(Lcom/tmall/wireless/ant/lifecycle/FetchModel;)Z
    .locals 3
    .param p1, "paramModel"    # Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    .prologue
    .line 190
    sget-object v0, Lc8/Ong;->sFetchModel:Ljava/lang/String;

    .line 191
    .local v0, "fetchModel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v0, p1, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->model:Ljava/lang/String;

    .line 194
    :cond_0
    const/4 v1, 0x0

    .line 195
    .local v1, "pullFetchModel":Z
    sget-object v2, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->PULL:Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    iget-object v2, v2, Lcom/tmall/wireless/ant/lifecycle/FetchModel;->model:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    const/4 v1, 0x1

    .line 198
    :cond_1
    return v1
.end method

.method private notifyBroadcast(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lc8/qng;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 421
    return-void
.end method


# virtual methods
.method public appEnterForeground()V
    .locals 1

    .prologue
    .line 208
    const-string/jumbo v0, "foreground"

    invoke-virtual {p0, v0}, Lc8/qng;->updateAntData(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public clearExperiments()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v0}, Lc8/Ong;->clear()V

    .line 332
    return-void
.end method

.method public enableExperiment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 429
    invoke-virtual {p0, p1, p2}, Lc8/qng;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "bucket":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllExperimentInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v0}, Lc8/Ong;->getAntConfig()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getBucket(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inputUrl"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "input: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Lc8/log;->info([Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_1

    .line 268
    .end local p1    # "inputUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 264
    .restart local p1    # "inputUrl":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lc8/qng;->mWebBucketFetcher:Lc8/rng;

    const-string/jumbo v2, "Rewrite"

    invoke-virtual {v1, v2, p1}, Lc8/rng;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "bucket":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    .line 268
    goto :goto_0
.end method

.method public getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/Ong;->sDowngradeAbtest:Z

    if-eqz v0, :cond_1

    .line 273
    :cond_0
    const/4 v0, 0x0

    .line 275
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/qng;->mNativeBucketFetcher:Lc8/rng;

    invoke-virtual {v0, p1, p2}, Lc8/rng;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getBucketsByComponent(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "component"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 351
    :cond_0
    monitor-exit p0

    return-object v3

    .line 343
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    iget-object v6, v6, Lc8/Ong;->nativeCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 345
    .local v1, "componentModule":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "module":Ljava/lang/String;
    iget-object v6, p0, Lc8/qng;->mNativeBucketFetcher:Lc8/rng;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v4, v7}, Lc8/rng;->getBucket(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "bucket":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "componentModule":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "module":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getCurrentVersion()I
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v0}, Lc8/Ong;->getCurrentAntConfigVersion()I

    move-result v0

    goto :goto_0
.end method

.method public getExperiments(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 302
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    :cond_0
    const/4 v1, 0x0

    .line 311
    :goto_0
    return-object v1

    .line 305
    :cond_1
    const/4 v1, 0x0

    .line 307
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lc8/qng;->mNativeBucketFetcher:Lc8/rng;

    invoke-virtual {v2, p1, p2}, Lc8/rng;->getEffectiveAbtestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getExperimentsByPageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 315
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 316
    :cond_0
    const/4 v2, 0x0

    .line 326
    :goto_0
    return-object v2

    .line 318
    :cond_1
    const/4 v2, 0x0

    .line 320
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lc8/qng;->mNativeBucketFetcher:Lc8/rng;

    invoke-virtual {v3, p1}, Lc8/rng;->getEffectiveAbtestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "nativeAbtestId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/qng;->mWebBucketFetcher:Lc8/rng;

    invoke-virtual {v3, p1}, Lc8/rng;->getEffectiveAbtestId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1

    .line 323
    .end local v1    # "nativeAbtestId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized getModuleBucketsByComponent(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p1, "component"    # Ljava/lang/String;
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
    .line 356
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v4, "moduleBuckets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    :cond_0
    monitor-exit p0

    return-object v4

    .line 360
    :cond_1
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    .local v5, "prefix":Ljava/lang/String;
    iget-object v6, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    iget-object v6, v6, Lc8/Ong;->nativeCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 362
    .local v1, "componentModule":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 363
    const-string/jumbo v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, "module":Ljava/lang/String;
    iget-object v6, p0, Lc8/qng;->mNativeBucketFetcher:Lc8/rng;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v3, v7}, Lc8/rng;->getBucket(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "bucket":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 356
    .end local v0    # "bucket":Ljava/lang/String;
    .end local v1    # "componentModule":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "module":Ljava/lang/String;
    .end local v4    # "moduleBuckets":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public getRunningPoolExperiments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Vng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0, p1, p2}, Lc8/qng;->getBucket(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "bucket":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switch bucket is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-object v1

    .line 282
    :cond_1
    const-string/jumbo v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 285
    :cond_2
    const-string/jumbo v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public getSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2}, Lc8/qng;->getSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 297
    .local v0, "sw":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .end local p3    # "defaultValue":Ljava/lang/Boolean;
    :goto_0
    return-object p3

    .restart local p3    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    move-object p3, v0

    goto :goto_0
.end method

.method public getSyncEnable()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lc8/qng;->mSyncEnable:Z

    return v0
.end method

.method public getSyncPoolExperiments()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Vng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v2, "expts":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    iget-object v8, p0, Lc8/qng;->mAntStore:Lc8/Ong;

    invoke-virtual {v8}, Lc8/Ong;->getAntConfig()Ljava/lang/String;

    move-result-object v7

    .line 437
    .local v7, "result":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 439
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 440
    .local v6, "object":Lorg/json/JSONObject;
    const-string/jumbo v8, "ants"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 441
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 442
    .local v5, "length":I
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 443
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lc8/Vng;->create(Lorg/json/JSONObject;)Lc8/Vng;

    move-result-object v3

    .line 444
    .local v3, "group":Lc8/Vng;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 441
    .end local v3    # "group":Lc8/Vng;
    .end local v4    # "i":I
    .end local v5    # "length":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 446
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 450
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-object v2
.end method

.method public init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "fetchModel"    # Lcom/tmall/wireless/ant/lifecycle/FetchModel;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/qng;->init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V

    .line 90
    return-void
.end method

.method public declared-synchronized init(Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "fetchModel"    # Lcom/tmall/wireless/ant/lifecycle/FetchModel;
    .param p3, "builder"    # Lc8/Rng;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter sContext cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_1
    if-nez p2, :cond_2

    .line 102
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parameter fetchModel cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    iput-object p1, p0, Lc8/qng;->mContext:Landroid/content/Context;

    .line 107
    sput-object p1, Lc8/kog;->sContext:Landroid/content/Context;

    .line 109
    invoke-static {}, Lc8/hog;->register()V

    .line 111
    invoke-static {}, Lc8/Ing;->register()V

    .line 113
    invoke-static {}, Lc8/Lng;->instance()Lc8/Lng;

    move-result-object v0

    new-instance v1, Lc8/nng;

    invoke-direct {v1, p0, p1, p2, p3}, Lc8/nng;-><init>(Lc8/qng;Landroid/app/Application;Lcom/tmall/wireless/ant/lifecycle/FetchModel;Lc8/Rng;)V

    invoke-virtual {v0, v1}, Lc8/Lng;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public mockExperiment(Lc8/Vng;)Z
    .locals 1
    .param p1, "experimentGroup"    # Lc8/Vng;

    .prologue
    .line 463
    if-eqz p1, :cond_0

    iget-object v0, p1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerABTestInfoOnPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/iog;->registerABTestInfoOnPage(Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public registerAndValidateServerABTestInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 394
    :try_start_0
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/iog;->registerAndValidateServerABTestInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "registerServerABTestInfoOnPage"

    invoke-static {v1, v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerComponentListener(Ljava/lang/String;Lc8/Yng;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/Yng;

    .prologue
    .line 227
    iget-object v0, p0, Lc8/qng;->mAntNotifier:Lc8/Xng;

    invoke-virtual {v0, p1, p2}, Lc8/Xng;->registerComponentListener(Ljava/lang/String;Lc8/Yng;)V

    .line 228
    return-void
.end method

.method public registerComponentModuleListener(Ljava/lang/String;Ljava/lang/String;Lc8/Zng;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/Zng;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/qng;->mAntNotifier:Lc8/Xng;

    invoke-virtual {v0, p1, p2, p3}, Lc8/Xng;->registerComponentModuleListener(Ljava/lang/String;Ljava/lang/String;Lc8/Zng;)V

    .line 238
    return-void
.end method

.method public registerCustomABTestInfoOnPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "abtest"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/iog;->registerCustomABTestInfoOnPage(Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public registerExtInfoOnPage(Ljava/util/Map;)V
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
    .line 378
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/iog;->registerExtInfoOnPage(Ljava/util/Map;)V

    .line 379
    return-void
.end method

.method public registerServerABTestInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 403
    :try_start_0
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/iog;->registerServerABTestInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "registerServerABTestInfo"

    invoke-static {v1, v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toggleSyncEnable()V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lc8/qng;->mSyncEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/qng;->mSyncEnable:Z

    .line 478
    return-void

    .line 477
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterComponentListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lc8/qng;->mAntNotifier:Lc8/Xng;

    invoke-virtual {v0, p1}, Lc8/Xng;->unregisterComponentListener(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public unregisterComponentModuleListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lc8/qng;->mAntNotifier:Lc8/Xng;

    invoke-virtual {v0, p1, p2}, Lc8/Xng;->unregisterComponentModuleListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public updateAntData()V
    .locals 0

    .prologue
    .line 203
    invoke-virtual {p0}, Lc8/qng;->appEnterForeground()V

    .line 204
    return-void
.end method

.method public updateAntData(Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceName"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-direct {p0}, Lc8/qng;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lc8/qng;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/Ong;->sDowngradeAbtest:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/qng;->mSyncEnable:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lc8/qng;->mAntUpdate:Lc8/Cng;

    invoke-virtual {v0, p1}, Lc8/Cng;->updateAntData(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateExtInfoOnPage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "pageObject"    # Ljava/lang/Object;

    .prologue
    .line 383
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/iog;->updateExtInfoOnPage(Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method public validateServerABTest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "module"    # Ljava/lang/String;

    .prologue
    .line 412
    :try_start_0
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/iog;->validateServerABTest(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "validateServerABTest"

    invoke-static {v1, v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
