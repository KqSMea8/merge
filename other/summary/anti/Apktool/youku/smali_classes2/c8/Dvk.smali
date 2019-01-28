.class public Lc8/Dvk;
.super Lc8/awk;
.source "YoukuFreeFlowApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Bvk;,
        Lc8/Cvk;
    }
.end annotation


# static fields
.field private static final ourInstance:Lc8/Dvk;


# instance fields
.field private canShowToast:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastUpdateTime:J

.field private mApplication:Landroid/app/Application;

.field private mFreeFlowResultUpdateCallBack:Lc8/Fvk;

.field private mId:Ljava/lang/String;

.field private mLifecycleCallbacks:Lc8/vvk;

.field private mMobileMgr:Lc8/Mvk;

.field private mNetWorkStateReceiver:Lc8/yvk;

.field private mOperator:Ljava/lang/String;

.field private mTelecomMgr:Lc8/Pvk;

.field private mUnicomMgr:Lc8/Xvk;

.field private mUpdateListener:Lc8/Cvk;

.field private mYKFreeFlowResult:Lc8/Avk;

.field private sSetup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lc8/Dvk;

    invoke-direct {v0}, Lc8/Dvk;-><init>()V

    sput-object v0, Lc8/Dvk;->ourInstance:Lc8/Dvk;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lc8/awk;-><init>()V

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Dvk;->mOperator:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Dvk;->mId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/Dvk;->canShowToast:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/Dvk;->lastUpdateTime:J

    .line 168
    return-void
.end method

.method static synthetic access$100(Lc8/Dvk;ILjava/lang/String;Lc8/Avk;)V
    .locals 0
    .param p0, "x0"    # Lc8/Dvk;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lc8/Avk;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lc8/Dvk;->sycCallBack(ILjava/lang/String;Lc8/Avk;)V

    return-void
.end method

.method static synthetic access$202(Lc8/Dvk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/Dvk;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Dvk;->mId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lc8/Dvk;Lc8/Avk;)Lc8/Avk;
    .locals 0
    .param p0, "x0"    # Lc8/Dvk;
    .param p1, "x1"    # Lc8/Avk;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    return-object p1
.end method

.method static synthetic access$400(Lc8/Dvk;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lc8/Dvk;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Dvk;->canShowToast:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lc8/Dvk;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Dvk;->mId:Ljava/lang/String;

    .line 442
    :cond_0
    iget-object v0, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    if-eqz v0, :cond_1

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    .line 454
    :cond_1
    return-void
.end method

.method public static getInstance()Lc8/Dvk;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lc8/Dvk;->ourInstance:Lc8/Dvk;

    return-object v0
.end method

.method private registService(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 90
    new-instance v1, Lc8/Cvk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/Cvk;-><init>(Lc8/Dvk;Lc8/Bvk;)V

    iput-object v1, p0, Lc8/Dvk;->mUpdateListener:Lc8/Cvk;

    .line 91
    invoke-static {}, Lc8/tvk;->getInstance()Lc8/tvk;

    move-result-object v1

    iget-object v2, p0, Lc8/Dvk;->mUpdateListener:Lc8/Cvk;

    invoke-virtual {v1, v2}, Lc8/tvk;->setRestUpdateListener(Lc8/svk;)V

    .line 93
    new-instance v1, Lc8/vvk;

    invoke-direct {v1}, Lc8/vvk;-><init>()V

    iput-object v1, p0, Lc8/Dvk;->mLifecycleCallbacks:Lc8/vvk;

    .line 94
    iget-object v1, p0, Lc8/Dvk;->mLifecycleCallbacks:Lc8/vvk;

    invoke-virtual {p1, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 96
    new-instance v1, Lc8/yvk;

    invoke-direct {v1}, Lc8/yvk;-><init>()V

    iput-object v1, p0, Lc8/Dvk;->mNetWorkStateReceiver:Lc8/yvk;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lc8/Dvk;->mNetWorkStateReceiver:Lc8/yvk;

    invoke-virtual {p1, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v1, "YKFreeFlowJSBridge"

    const-class v2, Lc8/rwk;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 102
    return-void
.end method

.method private sycCallBack(ILjava/lang/String;Lc8/Avk;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "ytFreeFlowResult"    # Lc8/Avk;

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lc8/Dvk;->mFreeFlowResultUpdateCallBack:Lc8/Fvk;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lc8/Dvk;->mFreeFlowResultUpdateCallBack:Lc8/Fvk;

    invoke-interface {v1, p1, p2, p3}, Lc8/Fvk;->onUpdate(ILjava/lang/String;Lc8/Avk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lc8/Dvk;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lc8/Dvk;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileMgr()Lc8/Mvk;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lc8/Dvk;->mMobileMgr:Lc8/Mvk;

    return-object v0
.end method

.method public getUnicomMgr()Lc8/Xvk;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lc8/Dvk;->mUnicomMgr:Lc8/Xvk;

    return-object v0
.end method

.method public isFreeFlow()Z
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lc8/Dvk;->isMobileRelateShip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Dvk;->isTelecomRelateShip()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/Dvk;->isUnicomRelateShip()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileRelateShip()Z
    .locals 3

    .prologue
    .line 385
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    .line 386
    .local v0, "result":Lc8/Avk;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u4e2d\u56fd\u79fb\u52a8"

    iget-object v2, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iget-object v2, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    if-ne v1, v2, :cond_0

    .line 387
    const/4 v1, 0x1

    .line 389
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRelateShipSmooth()Z
    .locals 3

    .prologue
    .line 413
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    .line 414
    .local v0, "result":Lc8/Avk;
    if-eqz v0, :cond_1

    const-string/jumbo v1, "\u4e2d\u56fd\u8054\u901a"

    iget-object v2, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iget-object v2, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "1161"

    iget-object v2, v0, Lc8/Avk;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "22201"

    iget-object v2, v0, Lc8/Avk;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    :cond_0
    const/4 v1, 0x1

    .line 417
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRelateShipWo()Z
    .locals 3

    .prologue
    .line 372
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    .line 373
    .local v0, "result":Lc8/Avk;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u4e2d\u56fd\u8054\u901a"

    iget-object v2, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iget-object v2, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "21156"

    iget-object v2, v0, Lc8/Avk;->productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    const/4 v1, 0x1

    .line 376
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTelecomRelateShip()Z
    .locals 3

    .prologue
    .line 398
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    .line 399
    .local v0, "result":Lc8/Avk;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u4e2d\u56fd\u7535\u4fe1"

    iget-object v2, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iget-object v2, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    if-ne v1, v2, :cond_0

    .line 400
    const-string/jumbo v1, "isTelecomRelateShip:telecom freeflow is true"

    invoke-static {v1}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x1

    .line 404
    :goto_0
    return v1

    .line 403
    :cond_0
    const-string/jumbo v1, "isTelecomRelateShip:telecom freeflow is false"

    invoke-static {v1}, Lc8/pwk;->errorLog(Ljava/lang/String;)V

    .line 404
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUnicomRelateShip()Z
    .locals 3

    .prologue
    .line 359
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Dvk;->queryFreeFlowResultCompletionhandler()Lc8/Avk;

    move-result-object v0

    .line 360
    .local v0, "result":Lc8/Avk;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "\u4e2d\u56fd\u8054\u901a"

    iget-object v2, v0, Lc8/Avk;->carrier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    iget-object v2, v0, Lc8/Avk;->status:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    if-ne v1, v2, :cond_0

    .line 361
    const/4 v1, 0x1

    .line 363
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public queryFreeFlowResultCompletionhandler()Lc8/Avk;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/phone/freeflow/FreeFlowStatusEnum;->FreeFlowStatusSubscribed:Lcom/youku/phone/freeflow/FreeFlowStatusEnum;

    .line 271
    :cond_0
    iget-object v0, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    return-object v0
.end method

.method public queryFreeFlowVideoUrlsSync(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lc8/Gvk;)V
    .locals 9
    .param p1, "videoName"    # Ljava/lang/String;
    .param p4, "callBack"    # Lc8/Gvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lc8/Gvk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "videoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "woVideoUrls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/Dvk;->mUnicomMgr:Lc8/Xvk;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lc8/Xvk;->getVideoOrAdUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Runnable;ZLc8/Gvk;)V

    .line 287
    return-void
.end method

.method public registerFreeFlowResultUpdateCallBack(Lc8/Fvk;)V
    .locals 0
    .param p1, "callBack"    # Lc8/Fvk;

    .prologue
    .line 231
    iput-object p1, p0, Lc8/Dvk;->mFreeFlowResultUpdateCallBack:Lc8/Fvk;

    .line 238
    return-void
.end method

.method public replaceAdvUrl(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;Lc8/Gvk;)V
    .locals 9
    .param p1, "videoName"    # Ljava/lang/String;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p4, "callBack"    # Lc8/Gvk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lc8/Gvk;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    .local p2, "videoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lc8/Dvk;->mUnicomMgr:Lc8/Xvk;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lc8/Xvk;->getVideoOrAdUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/lang/Runnable;ZLc8/Gvk;)V

    .line 332
    return-void
.end method

.method public setCanShowToast(Z)V
    .locals 1
    .param p1, "canshow"    # Z

    .prologue
    .line 433
    iget-object v0, p0, Lc8/Dvk;->canShowToast:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 434
    return-void
.end method

.method public setup(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 65
    iget-boolean v0, p0, Lc8/Dvk;->sSetup:Z

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dvk;->sSetup:Z

    .line 71
    iput-object p1, p0, Lc8/Dvk;->mApplication:Landroid/app/Application;

    .line 73
    new-instance v0, Lc8/Xvk;

    invoke-direct {v0, p1}, Lc8/Xvk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Dvk;->mUnicomMgr:Lc8/Xvk;

    .line 74
    new-instance v0, Lc8/Mvk;

    invoke-direct {v0, p1}, Lc8/Mvk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Dvk;->mMobileMgr:Lc8/Mvk;

    .line 75
    new-instance v0, Lc8/Pvk;

    invoke-direct {v0, p1}, Lc8/Pvk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Dvk;->mTelecomMgr:Lc8/Pvk;

    .line 77
    iget-object v0, p0, Lc8/Dvk;->mApplication:Landroid/app/Application;

    invoke-direct {p0, v0}, Lc8/Dvk;->registService(Landroid/app/Application;)V

    .line 79
    invoke-virtual {p0}, Lc8/Dvk;->update()Z

    goto :goto_0
.end method

.method public showFreeToast()V
    .locals 4

    .prologue
    .line 425
    iget-object v1, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Dvk;->isFreeFlow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u60a8\u6b63\u5728\u4f7f\u7528\u3010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Dvk;->mYKFreeFlowResult:Lc8/Avk;

    iget-object v2, v2, Lc8/Avk;->productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u3011\u514d\u6d41\u670d\u52a1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lc8/mwk;->showToast(Ljava/lang/String;J)V

    .line 429
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lc8/Dvk;->canShowToast:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 430
    return-void
.end method

.method public unregisterFreeFlowResultUpdateCallBack(Lc8/Fvk;)V
    .locals 1
    .param p1, "callBack"    # Lc8/Fvk;

    .prologue
    .line 246
    iget-object v0, p0, Lc8/Dvk;->mFreeFlowResultUpdateCallBack:Lc8/Fvk;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Dvk;->mFreeFlowResultUpdateCallBack:Lc8/Fvk;

    goto :goto_0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 125
    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Lc8/Dvk;->update(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;)Z
    .locals 8
    .param p1, "utStep"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lc8/Dvk;->lastUpdateTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/Dvk;->lastUpdateTime:J

    .line 136
    invoke-static {}, Lc8/Iin;->hasInternet()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lc8/Iin;->isWifi()Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    iget-object v3, p0, Lc8/Dvk;->mApplication:Landroid/app/Application;

    invoke-static {v3}, Lc8/pwk;->getOperatorType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    .end local v0    # "operator":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 142
    .restart local v0    # "operator":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lc8/Dvk;->mOperator:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lc8/Dvk;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 143
    invoke-direct {p0}, Lc8/Dvk;->clearCache()V

    .line 145
    :cond_2
    sput-object p1, Lc8/owk;->SDKSTART:Ljava/lang/String;

    .line 146
    const-string/jumbo v3, "3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {p0, v2}, Lc8/Dvk;->setCanShowToast(Z)V

    .line 150
    :cond_3
    const-string/jumbo v3, "mobile"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    iget-object v1, p0, Lc8/Dvk;->mMobileMgr:Lc8/Mvk;

    invoke-virtual {v1}, Lc8/Mvk;->init()V

    move v1, v2

    .line 153
    goto :goto_0

    .line 154
    :cond_4
    const-string/jumbo v2, "unicom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 156
    iget-object v2, p0, Lc8/Dvk;->mUnicomMgr:Lc8/Xvk;

    invoke-virtual {v2}, Lc8/Xvk;->init()V

    goto :goto_0

    .line 157
    :cond_5
    const-string/jumbo v2, "telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v2, p0, Lc8/Dvk;->mTelecomMgr:Lc8/Pvk;

    invoke-virtual {v2}, Lc8/Pvk;->init()V

    goto :goto_0
.end method
