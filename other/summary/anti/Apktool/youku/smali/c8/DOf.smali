.class public Lc8/DOf;
.super Lc8/ePf;
.source "TUrlImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/COf;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UIKitImage"

.field private static sActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static sAutoSizeSkippedGlobally:Z

.field private static sGlobalFinalUrlInspector:Lc8/COf;

.field public static sTemporaryDrawableGetting:Z

.field private static sViewGroupByActivity:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/DOf;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mDoNotLayout:Z

.field private mEnableAutoRelease:Z

.field private mEnableLayoutOptimize:Z

.field private mImageLoad:Lc8/tOf;

.field private mKeepImageIfShownInLastScreen:Z

.field private mOutWindowVisibilityChangedReally:Z

.field private mShouldRecoverOnNextVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/DOf;->sViewGroupByActivity:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0, p1}, Lc8/ePf;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v1, p0, Lc8/DOf;->mEnableLayoutOptimize:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/DOf;->mEnableAutoRelease:Z

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc8/DOf;->initImageLoad(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Lc8/ePf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v1, p0, Lc8/DOf;->mEnableLayoutOptimize:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/DOf;->mEnableAutoRelease:Z

    .line 88
    invoke-direct {p0, p1, p2, v1}, Lc8/DOf;->initImageLoad(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lc8/ePf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/DOf;->mEnableLayoutOptimize:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/DOf;->mEnableAutoRelease:Z

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lc8/DOf;->initImageLoad(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;ZZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lc8/DOf;->onActivityStateChanged(Landroid/app/Activity;ZZZ)V

    return-void
.end method

.method public static getGlobalFinalUrlInspector()Lc8/COf;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lc8/DOf;->sGlobalFinalUrlInspector:Lc8/COf;

    return-object v0
.end method

.method private initImageLoad(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v1, Lc8/tOf;

    invoke-direct {v1}, Lc8/tOf;-><init>()V

    iput-object v1, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    .line 98
    new-array v0, v3, [Z

    aput-boolean v3, v0, v2

    .line 99
    .local v0, "autoReleaseRet":[Z
    iget-object v1, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v1, p1, p2, p3, v0}, Lc8/tOf;->constructor(Landroid/content/Context;Landroid/util/AttributeSet;I[Z)V

    .line 100
    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lc8/DOf;->mEnableAutoRelease:Z

    .line 101
    iget-object v1, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {p0, v1}, Lc8/DOf;->addFeature(Lc8/SOf;)Z

    .line 102
    return-void
.end method

.method public static isAutoSizeSkippedGlobally()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lc8/DOf;->sAutoSizeSkippedGlobally:Z

    return v0
.end method

.method private static onActivityStateChanged(Landroid/app/Activity;ZZZ)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isResumed"    # Z
    .param p2, "isStopped"    # Z
    .param p3, "isDestroyed"    # Z

    .prologue
    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 509
    .local v0, "activityHash":I
    sget-object v5, Lc8/DOf;->sViewGroupByActivity:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 510
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    if-eqz v2, :cond_2

    .line 512
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 514
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 515
    .local v4, "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/DOf;

    .local v3, "view":Lc8/DOf;
    if-eqz v3, :cond_0

    .line 516
    if-eqz p3, :cond_0

    .line 517
    invoke-direct {v3}, Lc8/DOf;->onDestroyed()V

    goto :goto_0

    .line 521
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    .end local v3    # "view":Lc8/DOf;
    .end local v4    # "viewRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;"
    :cond_1
    if-eqz p3, :cond_2

    .line 522
    sget-object v5, Lc8/DOf;->sViewGroupByActivity:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    :cond_2
    return-void
.end method

.method private onDestroyed()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/tOf;->setHost(Landroid/widget/ImageView;)V

    .line 505
    return-void
.end method

.method private putThisIntoViewGroup()V
    .locals 8

    .prologue
    .line 458
    invoke-virtual {p0}, Lc8/DOf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 459
    .local v1, "ctx":Landroid/content/Context;
    const/4 v0, 0x0

    .line 461
    .local v0, "activityHash":Ljava/lang/Integer;
    instance-of v5, v1, Landroid/app/Activity;

    if-eqz v5, :cond_4

    .line 462
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 467
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 469
    .local v4, "viewHash":Ljava/lang/Integer;
    sget-object v5, Lc8/DOf;->sViewGroupByActivity:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 470
    .local v2, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    if-nez v2, :cond_1

    .line 471
    new-instance v2, Ljava/util/LinkedHashMap;

    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 472
    .restart local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    sget-object v5, Lc8/DOf;->sViewGroupByActivity:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 475
    :cond_2
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .end local v2    # "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/taobao/uikit/extend/feature/view/TUrlImageView;>;>;"
    .end local v4    # "viewHash":Ljava/lang/Integer;
    :cond_3
    return-void

    .line 463
    :cond_4
    invoke-virtual {p0}, Lc8/DOf;->getRootView()Landroid/view/View;

    move-result-object v3

    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 464
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method private realDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "forTemporaryUsing"    # Z

    .prologue
    .line 274
    invoke-super {p0}, Lc8/ePf;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lc8/AOf;

    if-eqz v1, :cond_0

    .line 276
    check-cast v0, Lc8/AOf;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Lc8/AOf;->getRealDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    :cond_0
    return-object v0
.end method

.method private declared-synchronized recoverImageIfPossible(Z)V
    .locals 3
    .param p1, "fromWindowResumed"    # Z

    .prologue
    const/16 v2, 0x64

    .line 367
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/DOf;->mShouldRecoverOnNextVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lc8/DOf;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 368
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/DOf;->mShouldRecoverOnNextVisible:Z

    .line 374
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc8/DOf;->getWidth()I

    move-result v1

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lc8/DOf;->getHeight()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 375
    :cond_0
    invoke-super {p0}, Lc8/ePf;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 376
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lc8/AOf;

    if-eqz v1, :cond_1

    .line 377
    check-cast v0, Lc8/AOf;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lc8/AOf;->recover()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_1
    monitor-exit p0

    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static registerActivityCallback(Landroid/app/Application;)V
    .locals 4
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 529
    new-instance v0, Lc8/BOf;

    invoke-direct {v0}, Lc8/BOf;-><init>()V

    sput-object v0, Lc8/DOf;->sActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 548
    sget-object v0, Lc8/DOf;->sActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 549
    const-string/jumbo v0, "UIKitImage"

    const-string/jumbo v1, "register activity callback for cancelling on destroyed, app=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lc8/APf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    return-void
.end method

.method private declared-synchronized releaseImageIfPossible()V
    .locals 2

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/DOf;->mEnableAutoRelease:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/DOf;->mShouldRecoverOnNextVisible:Z

    if-nez v1, :cond_0

    .line 386
    invoke-super {p0}, Lc8/ePf;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 387
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Lc8/AOf;

    if-eqz v1, :cond_1

    check-cast v0, Lc8/AOf;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Lc8/AOf;->release()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lc8/DOf;->mShouldRecoverOnNextVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_0
    monitor-exit p0

    return-void

    .line 387
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private releaseImageWhenInvisible(ZZ)V
    .locals 1
    .param p1, "isWindowInvisible"    # Z
    .param p2, "isViewInvisible"    # Z

    .prologue
    .line 398
    if-nez p2, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lc8/DOf;->mKeepImageIfShownInLastScreen:Z

    if-nez v0, :cond_1

    .line 399
    :cond_0
    invoke-direct {p0}, Lc8/DOf;->releaseImageIfPossible()V

    .line 401
    :cond_1
    return-void
.end method

.method public static setGlobalFinalUrlInspector(Lc8/COf;)V
    .locals 0
    .param p0, "inspector"    # Lc8/COf;

    .prologue
    .line 62
    sput-object p0, Lc8/DOf;->sGlobalFinalUrlInspector:Lc8/COf;

    .line 63
    return-void
.end method

.method public static skipAutoSizeGlobally(Z)V
    .locals 0
    .param p0, "skip"    # Z

    .prologue
    .line 53
    sput-boolean p0, Lc8/DOf;->sAutoSizeSkippedGlobally:Z

    .line 54
    return-void
.end method

.method public static unregisterActivityCallback(Landroid/app/Application;)V
    .locals 4
    .param p0, "app"    # Landroid/app/Application;

    .prologue
    .line 553
    sget-object v0, Lc8/DOf;->sActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p0, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 554
    const-string/jumbo v0, "UIKitImage"

    const-string/jumbo v1, "unregister activity callback for cancelling on destroyed, app=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lc8/APf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    return-void
.end method


# virtual methods
.method public asyncSetImageUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 159
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 160
    iput-boolean v3, p0, Lc8/DOf;->mEnableLayoutOptimize:Z

    .line 161
    return-void
.end method

.method public asyncSetImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey4PlaceHolder"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 165
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/DOf;->mOutWindowVisibilityChangedReally:Z

    .line 407
    invoke-super {p0, p1}, Lc8/ePf;->dispatchWindowVisibilityChanged(I)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/DOf;->mOutWindowVisibilityChangedReally:Z

    .line 409
    return-void
.end method

.method public enableLoadOnFling(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->enableLoadOnFling(Z)V

    .line 126
    return-void
.end method

.method public enableSizeInLayoutParams(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->enableSizeInLayoutParams(Z)V

    .line 206
    return-void
.end method

.method public failListener(Lc8/qxf;)Lc8/tOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;)",
            "Lc8/tOf;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/FailPhenixEvent;>;"
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->failListener(Lc8/qxf;)Lc8/tOf;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lc8/DOf;->sTemporaryDrawableGetting:Z

    invoke-direct {p0, v0}, Lc8/DOf;->realDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0}, Lc8/tOf;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLoadingUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0}, Lc8/tOf;->getLoadingUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getmImageLoad()Lc8/tOf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    return-object v0
.end method

.method public isDrawableSameWith(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .param p1, "target"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x1

    .line 283
    invoke-direct {p0, v0}, Lc8/DOf;->realDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isViewBitmapDifferentWith(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x1

    .line 288
    invoke-direct {p0, v1}, Lc8/DOf;->realDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 289
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keepBackgroundOnForegroundUpdate(Z)V
    .locals 1
    .param p1, "keep"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->keepBackgroundOnForegroundUpdate(Z)V

    .line 262
    return-void
.end method

.method public keepImageIfShownInLastScreen(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lc8/DOf;->mKeepImageIfShownInLastScreen:Z

    .line 363
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0}, Lc8/ePf;->onAttachedToWindow()V

    .line 484
    invoke-direct {p0}, Lc8/DOf;->putThisIntoViewGroup()V

    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/DOf;->recoverImageIfPossible(Z)V

    .line 486
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Lc8/ePf;->onDetachedFromWindow()V

    .line 453
    invoke-direct {p0}, Lc8/DOf;->releaseImageIfPossible()V

    .line 454
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 498
    invoke-super {p0}, Lc8/ePf;->onFinishTemporaryDetach()V

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/DOf;->recoverImageIfPossible(Z)V

    .line 501
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .prologue
    .line 490
    invoke-super {p0}, Lc8/ePf;->onStartTemporaryDetach()V

    .line 492
    invoke-direct {p0}, Lc8/DOf;->releaseImageIfPossible()V

    .line 493
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 434
    invoke-super {p0, p1, p2}, Lc8/ePf;->onVisibilityChanged(Landroid/view/View;I)V

    .line 435
    if-ne p1, p0, :cond_0

    .line 437
    sparse-switch p2, :sswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 439
    :sswitch_0
    invoke-direct {p0, v0}, Lc8/DOf;->recoverImageIfPossible(Z)V

    goto :goto_0

    .line 443
    :sswitch_1
    invoke-virtual {p0}, Lc8/DOf;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Lc8/DOf;->releaseImageWhenInvisible(ZZ)V

    goto :goto_0

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 413
    invoke-super {p0, p1}, Lc8/ePf;->onWindowVisibilityChanged(I)V

    .line 418
    iget-boolean v0, p0, Lc8/DOf;->mOutWindowVisibilityChangedReally:Z

    if-eqz v0, :cond_0

    .line 420
    sparse-switch p1, :sswitch_data_0

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 422
    :sswitch_0
    invoke-direct {p0, v1}, Lc8/DOf;->recoverImageIfPossible(Z)V

    goto :goto_0

    .line 426
    :sswitch_1
    invoke-virtual {p0}, Lc8/DOf;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v0}, Lc8/DOf;->releaseImageWhenInvisible(ZZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 420
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0}, Lc8/tOf;->pause()V

    .line 246
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/tOf;->reload(Z)V

    .line 169
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lc8/DOf;->mDoNotLayout:Z

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/DOf;->mDoNotLayout:Z

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-super {p0}, Lc8/ePf;->requestLayout()V

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0}, Lc8/tOf;->resume()V

    .line 242
    return-void
.end method

.method public retrieveImageData()Lc8/exf;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0}, Lc8/tOf;->retrieveImageData()Lc8/exf;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoRelease(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lc8/DOf;->mEnableAutoRelease:Z

    .line 354
    return-void
.end method

.method public setErrorImageResId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 226
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setErrorImageResId(I)V

    .line 227
    return-void
.end method

.method public setFadeIn(Z)V
    .locals 1
    .param p1, "fadeIn"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setFadeIn(Z)V

    .line 238
    return-void
.end method

.method public setFinalUrlInspector(Lc8/COf;)V
    .locals 1
    .param p1, "inspector"    # Lc8/COf;

    .prologue
    .line 562
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setFinalUrlInspector(Lc8/COf;)V

    .line 563
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "newDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 309
    invoke-super {p0}, Lc8/ePf;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    .local v0, "lastDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    if-eqz v2, :cond_0

    .line 311
    if-nez p1, :cond_2

    .line 312
    if-eqz v0, :cond_0

    .line 313
    iget-object v2, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v2}, Lc8/tOf;->resetState()V

    .line 321
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lc8/ePf;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    if-eq v0, p1, :cond_1

    .line 325
    iput-boolean v3, p0, Lc8/DOf;->mShouldRecoverOnNextVisible:Z

    .line 329
    instance-of v2, v0, Lc8/AOf;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Lc8/AOf;

    .local v1, "lastProxy":Lc8/AOf;
    invoke-virtual {v1, p1}, Lc8/AOf;->isContentDifferent(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {v1}, Lc8/AOf;->release()Z

    .line 334
    .end local v1    # "lastProxy":Lc8/AOf;
    :cond_1
    return-void

    .line 315
    :cond_2
    instance-of v2, p1, Lc8/Yvf;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lc8/ivf;

    if-nez v2, :cond_0

    .line 316
    check-cast p1, Lc8/Yvf;

    .end local p1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lc8/AOf;->obtain(Landroid/graphics/drawable/BitmapDrawable;)Lc8/AOf;

    move-result-object v2

    invoke-virtual {v2, p0}, Lc8/AOf;->bindHostView(Lc8/DOf;)Lc8/AOf;

    move-result-object p1

    .line 317
    .restart local p1    # "newDrawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lc8/DOf;->mEnableLayoutOptimize:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lc8/DOf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lc8/DOf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v4, :cond_3

    invoke-virtual {p0}, Lc8/DOf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v4, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lc8/DOf;->mDoNotLayout:Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 133
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    move-object v1, p1

    move v4, v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 134
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Lc8/uOf;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lc8/uOf;

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    const/4 v2, 0x0

    move-object v1, p1

    move v4, v3

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 138
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey4PlaceHolder"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 149
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;Ljava/lang/String;Lc8/uOf;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cacheKey4PlaceHolder"    # Ljava/lang/String;
    .param p3, "options"    # Lc8/uOf;

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/tOf;->setImageUrl(Ljava/lang/String;Ljava/lang/String;ZZLc8/uOf;)V

    .line 153
    return-void
.end method

.method public setPhenixOptions(Lc8/uOf;)V
    .locals 1
    .param p1, "options"    # Lc8/uOf;

    .prologue
    .line 118
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setPhenixOptions(Lc8/uOf;)V

    .line 119
    return-void
.end method

.method public setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 219
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setPlaceHoldForeground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    return-void
.end method

.method public setPlaceHoldImageResId(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setPlaceHoldImageResId(I)V

    .line 213
    return-void
.end method

.method public setPriorityModuleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setPriorityModuleName(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setSkipAutoSize(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 233
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->skipAutoSize(Z)Z

    .line 234
    return-void
.end method

.method public setStrategyConfig(Ljava/lang/Object;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/Object;

    .prologue
    .line 197
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setStrategyConfig(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public setWhenNullClearImg(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 253
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->setWhenNullClearImg(Z)V

    .line 254
    return-void
.end method

.method public succListener(Lc8/qxf;)Lc8/tOf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;)",
            "Lc8/tOf;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/SuccPhenixEvent;>;"
    iget-object v0, p0, Lc8/DOf;->mImageLoad:Lc8/tOf;

    invoke-virtual {v0, p1}, Lc8/tOf;->succListener(Lc8/qxf;)Lc8/tOf;

    move-result-object v0

    return-object v0
.end method
