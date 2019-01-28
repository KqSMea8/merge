.class public Lc8/oYf;
.super Ljava/lang/Object;
.source "DOMActionContextImpl.java"

# interfaces
.implements Lc8/gYf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/kYf;,
        Lc8/jYf;,
        Lc8/nYf;,
        Lc8/mYf;
    }
.end annotation


# instance fields
.field private animations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mAddDOMConsumer:Lc8/GYf;

.field private mAddDom:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/kYf;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroy:Z

.field private volatile mDirty:Z

.field private mInstanceId:Ljava/lang/String;

.field private mLayoutContext:Lc8/AZf;

.field private mNormalTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/sag;",
            ">;"
        }
    .end annotation
.end field

.field final mRegistry:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/HYf;",
            ">;"
        }
    .end annotation
.end field

.field private mUnregisterDomConsumer:Lc8/GYf;

.field private mWXRenderManager:Lc8/Cag;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/Cag;)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "renderManager"    # Lc8/Cag;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/oYf;->mAddDom:Ljava/util/Map;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/oYf;->mDestroy:Z

    .line 88
    iput-object p1, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    .line 89
    new-instance v0, Lc8/AZf;

    invoke-direct {v0}, Lc8/AZf;-><init>()V

    iput-object v0, p0, Lc8/oYf;->mLayoutContext:Lc8/AZf;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc8/oYf;->animations:Ljava/util/Set;

    .line 93
    iput-object p2, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    .line 94
    new-instance v0, Lc8/jYf;

    iget-object v1, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Lc8/jYf;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lc8/oYf;->mAddDOMConsumer:Lc8/GYf;

    .line 95
    new-instance v0, Lc8/nYf;

    iget-object v1, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Lc8/nYf;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lc8/oYf;->mUnregisterDomConsumer:Lc8/GYf;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lc8/oYf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/oYf;

    .prologue
    .line 64
    iget-boolean v0, p0, Lc8/oYf;->mDestroy:Z

    return v0
.end method

.method static synthetic access$200(Lc8/oYf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/oYf;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/oYf;)Lc8/Cag;
    .locals 1
    .param p0, "x0"    # Lc8/oYf;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    return-object v0
.end method

.method static synthetic access$400(Lc8/oYf;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/oYf;

    .prologue
    .line 64
    iget-object v0, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lc8/Kag;
    .locals 12
    .param p1, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/Kag;"
        }
    .end annotation

    .prologue
    .local p2, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 401
    if-eqz p2, :cond_0

    .line 403
    :try_start_0
    const-string/jumbo v1, "transform"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 404
    .local v10, "transform":Ljava/lang/Object;
    instance-of v1, v10, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 405
    const-string/jumbo v1, "transformOrigin"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, "transformOrigin":Ljava/lang/String;
    new-instance v7, Lc8/Kag;

    invoke-direct {v7}, Lc8/Kag;-><init>()V

    .line 407
    .local v7, "animationBean":Lc8/Kag;
    iget-object v1, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/HYf;

    .line 408
    .local v8, "domObject":Lc8/HYf;
    invoke-virtual {v8}, Lc8/HYf;->getLayoutWidth()F

    move-result v1

    float-to-int v4, v1

    .line 409
    .local v4, "width":I
    invoke-virtual {v8}, Lc8/HYf;->getLayoutHeight()F

    move-result v1

    float-to-int v5, v1

    .line 410
    .local v5, "height":I
    new-instance v1, Lc8/Jag;

    invoke-direct {v1}, Lc8/Jag;-><init>()V

    iput-object v1, v7, Lc8/Kag;->styles:Lc8/Jag;

    .line 411
    iget-object v1, v7, Lc8/Kag;->styles:Lc8/Jag;

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    iget-object v6, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-static {v6}, Lc8/pVf;->getInstanceViewPortWidth(Ljava/lang/String;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lc8/Jag;->init(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v2    # "transformOrigin":Ljava/lang/String;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v7    # "animationBean":Lc8/Kag;
    .end local v8    # "domObject":Lc8/HYf;
    .end local v10    # "transform":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 414
    :catch_0
    move-exception v9

    .line 415
    .local v9, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, ""

    invoke-static {v1, v9}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v11

    .line 416
    goto :goto_0

    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_0
    move-object v7, v11

    .line 419
    goto :goto_0
.end method

.method private parseAnimation()V
    .locals 5

    .prologue
    .line 293
    iget-object v3, p0, Lc8/oYf;->animations:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 294
    .local v2, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    invoke-direct {p0, v3, v4}, Lc8/oYf;->createAnimationBean(Ljava/lang/String;Ljava/util/Map;)Lc8/Kag;

    move-result-object v0

    .line 296
    .local v0, "animationBean":Lc8/Kag;
    if-eqz v0, :cond_0

    .line 297
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v0}, Lc8/YYf;->getAnimationAction(Ljava/lang/String;Lc8/Kag;)Lc8/rYf;

    move-result-object v3

    invoke-virtual {p0, v3}, Lc8/oYf;->postRenderTask(Lc8/rYf;)V

    goto :goto_0

    .line 301
    .end local v0    # "animationBean":Lc8/Kag;
    .end local v2    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_1
    return-void
.end method

.method private updateDomObj()V
    .locals 10

    .prologue
    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 308
    .local v2, "start":J
    iget-object v5, p0, Lc8/oYf;->mAddDom:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 311
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/dom/DOMActionContextImpl$AddDomInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/dom/DOMActionContextImpl$AddDomInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/kYf;

    .line 314
    .local v4, "value":Lc8/kYf;
    iget-object v5, v4, Lc8/kYf;->component:Lc8/tbg;

    invoke-direct {p0, v5}, Lc8/oYf;->updateDomObj(Lc8/tbg;)V

    goto :goto_0

    .line 316
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/taobao/weex/dom/DOMActionContextImpl$AddDomInfo;>;"
    .end local v4    # "value":Lc8/kYf;
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    const-string/jumbo v5, "updateDomObj"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_1
    return-void
.end method

.method private updateDomObj(Lc8/tbg;)V
    .locals 6
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 326
    if-nez p1, :cond_1

    .line 342
    :cond_0
    return-void

    .line 329
    :cond_1
    iget-object v4, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/HYf;

    .line 330
    .local v2, "domObject":Lc8/HYf;
    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {v2}, Lc8/HYf;->old()V

    .line 334
    invoke-virtual {p1, v2}, Lc8/tbg;->updateDom(Lc8/HYf;)V

    .line 335
    instance-of v4, p1, Lc8/scg;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 336
    check-cast v0, Lc8/scg;

    .line 337
    .local v0, "container":Lc8/scg;
    invoke-virtual {v0}, Lc8/scg;->childCount()I

    move-result v1

    .line 338
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 339
    invoke-virtual {v0, v3}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/oYf;->updateDomObj(Lc8/tbg;)V

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAnimationForElement(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p2, "animMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/oYf;->animations:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oYf;->mDirty:Z

    .line 348
    return-void
.end method

.method public addDomInfo(Ljava/lang/String;Lc8/tbg;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "component"    # Lc8/tbg;

    .prologue
    .line 120
    new-instance v0, Lc8/kYf;

    invoke-direct {v0}, Lc8/kYf;-><init>()V

    .line 121
    .local v0, "addDomInfo":Lc8/kYf;
    iput-object p2, v0, Lc8/kYf;->component:Lc8/tbg;

    .line 122
    iget-object v1, p0, Lc8/oYf;->mAddDom:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method batch()V
    .locals 10

    .prologue
    .line 173
    iget-boolean v6, p0, Lc8/oYf;->mDirty:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lc8/oYf;->mDestroy:Z

    if-eqz v6, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 177
    .local v2, "start":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 178
    .local v4, "startNanos":J
    iget-object v6, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v7, "_root"

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/HYf;

    .line 179
    .local v1, "rootDom":Lc8/HYf;
    invoke-virtual {p0, v1}, Lc8/oYf;->layout(Lc8/HYf;)V

    .line 181
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    const-string/jumbo v6, "domBatch"

    iget-object v7, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lc8/mag;->newEvent(Ljava/lang/String;Ljava/lang/String;I)Lc8/kag;

    move-result-object v0

    .line 183
    .local v0, "batchEvent":Lc8/kag;
    invoke-static {v4, v5}, Lc8/jag;->millisUntilNow(J)D

    move-result-wide v6

    iput-wide v6, v0, Lc8/kag;->duration:D

    .line 184
    iput-wide v2, v0, Lc8/kag;->ts:J

    .line 185
    const-string/jumbo v6, "X"

    iput-object v6, v0, Lc8/kag;->ph:Ljava/lang/String;

    .line 186
    invoke-static {v0}, Lc8/mag;->submit(Lc8/kag;)V

    .line 188
    .end local v0    # "batchEvent":Lc8/kag;
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mInstanceId  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " batch used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/xgg;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method consumeRenderTasks()V
    .locals 5

    .prologue
    .line 254
    iget-object v2, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 255
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-boolean v2, p0, Lc8/oYf;->mDestroy:Z

    if-nez v2, :cond_0

    .line 256
    iget-object v3, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    iget-object v4, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    iget-object v2, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/sag;

    invoke-virtual {v3, v4, v2}, Lc8/Cag;->runOnThread(Ljava/lang/String;Lc8/sag;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-object v2, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 259
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oYf;->mDestroy:Z

    .line 130
    iget-object v0, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 131
    iput-object v1, p0, Lc8/oYf;->mAddDOMConsumer:Lc8/GYf;

    .line 132
    iget-object v0, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v0, p0, Lc8/oYf;->mAddDom:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    iput-object v1, p0, Lc8/oYf;->mLayoutContext:Lc8/AZf;

    .line 135
    iput-object v1, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    .line 136
    iget-object v0, p0, Lc8/oYf;->animations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    return-void
.end method

.method public getAddDOMConsumer()Lc8/GYf;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lc8/oYf;->mAddDOMConsumer:Lc8/GYf;

    return-object v0
.end method

.method public getApplyStyleConsumer()Lc8/GYf;
    .locals 1

    .prologue
    .line 115
    invoke-static {}, Lc8/XXf;->getInstance()Lc8/XXf;

    move-result-object v0

    return-object v0
.end method

.method public getCompByRef(Ljava/lang/String;)Lc8/tbg;
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    iget-object v1, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lc8/Cag;->getWXComponent(Ljava/lang/String;Ljava/lang/String;)Lc8/tbg;

    move-result-object v0

    return-object v0
.end method

.method public getDomByRef(Ljava/lang/String;)Lc8/HYf;
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 397
    iget-object v0, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HYf;

    return-object v0
.end method

.method public getInstance()Lc8/nVf;
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    iget-object v1, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Cag;->getWXSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoveElementConsumer()Lc8/GYf;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lc8/oYf;->mUnregisterDomConsumer:Lc8/GYf;

    return-object v0
.end method

.method public isDestory()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method layout(Lc8/HYf;)V
    .locals 10
    .param p1, "rootDom"    # Lc8/HYf;

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 198
    .local v4, "start0":J
    invoke-virtual {p0, p1}, Lc8/oYf;->rebuildingFixedDomTree(Lc8/HYf;)V

    .line 200
    new-array v7, v1, [Lc8/GYf;

    new-instance v8, Lc8/hYf;

    invoke-direct {v8, p0}, Lc8/hYf;-><init>(Lc8/oYf;)V

    aput-object v8, v7, v6

    invoke-virtual {p1, v7}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 211
    .local v2, "start":J
    iget-object v7, p0, Lc8/oYf;->mLayoutContext:Lc8/AZf;

    invoke-virtual {p1, v7}, Lc8/HYf;->calculateLayout(Lc8/AZf;)V

    .line 213
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v7

    iget-object v8, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    .line 214
    .local v0, "instance":Lc8/nVf;
    if-eqz v0, :cond_2

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lc8/nVf;->cssLayoutTime(J)V

    .line 218
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 219
    const/4 v7, 0x2

    new-array v7, v7, [Lc8/GYf;

    new-instance v8, Lc8/iYf;

    invoke-direct {v8, p0}, Lc8/iYf;-><init>(Lc8/oYf;)V

    aput-object v8, v7, v6

    new-instance v8, Lc8/mYf;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lc8/mYf;-><init>(Lc8/oYf;Lc8/hYf;)V

    aput-object v8, v7, v1

    invoke-virtual {p1, v7}, Lc8/HYf;->traverseTree([Lc8/GYf;)V

    .line 230
    if-eqz v0, :cond_3

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lc8/nVf;->applyUpdateTime(J)V

    .line 234
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 235
    invoke-direct {p0}, Lc8/oYf;->updateDomObj()V

    .line 236
    if-eqz v0, :cond_4

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v0, v8, v9}, Lc8/nVf;->updateDomObjTime(J)V

    .line 239
    :cond_4
    invoke-direct {p0}, Lc8/oYf;->parseAnimation()V

    .line 241
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lc8/nVf;->isPreRenderMode()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 242
    .local v1, "isPreRenderMode":Z
    :goto_1
    if-nez v1, :cond_5

    .line 243
    invoke-virtual {p0}, Lc8/oYf;->consumeRenderTasks()V

    .line 245
    :cond_5
    iget-object v7, p0, Lc8/oYf;->mAddDom:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 246
    iget-object v7, p0, Lc8/oYf;->animations:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 247
    iput-boolean v6, p0, Lc8/oYf;->mDirty:Z

    .line 248
    if-eqz v0, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v0, v6, v7}, Lc8/nVf;->batchTime(J)V

    goto/16 :goto_0

    .end local v1    # "isPreRenderMode":Z
    :cond_6
    move v1, v6

    .line 241
    goto :goto_1
.end method

.method public markDirty()V
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lc8/oYf;->mDestroy:Z

    if-nez v0, :cond_0

    .line 384
    iget-boolean v0, p0, Lc8/oYf;->mDirty:Z

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oYf;->mDirty:Z

    .line 388
    :cond_0
    return-void
.end method

.method public postRenderTask(Lc8/rYf;)V
    .locals 4
    .param p1, "action"    # Lc8/rYf;

    .prologue
    .line 352
    iget-object v0, p0, Lc8/oYf;->mNormalTasks:Ljava/util/ArrayList;

    new-instance v1, Lc8/tYf;

    iget-object v2, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    iget-object v3, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/Cag;->getRenderContext(Ljava/lang/String;)Lc8/sYf;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lc8/tYf;-><init>(Lc8/rYf;Lc8/sYf;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/oYf;->mDirty:Z

    .line 354
    return-void
.end method

.method rebuildingFixedDomTree(Lc8/HYf;)V
    .locals 5
    .param p1, "root"    # Lc8/HYf;

    .prologue
    .line 146
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc8/HYf;->getFixedStyleRefs()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 147
    invoke-virtual {p1}, Lc8/HYf;->getFixedStyleRefs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 149
    invoke-virtual {p1}, Lc8/HYf;->getFixedStyleRefs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "fixedRef":Ljava/lang/String;
    iget-object v4, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/HYf;

    .line 151
    .local v3, "wxDomObject":Lc8/HYf;
    if-eqz v3, :cond_0

    iget-object v4, v3, Lc8/HYf;->parent:Lc8/HYf;

    if-eqz v4, :cond_0

    .line 152
    iget-object v4, v3, Lc8/HYf;->parent:Lc8/HYf;

    invoke-virtual {v4, v3}, Lc8/HYf;->remove(Lc8/HYf;)V

    .line 153
    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "fixedRef":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "wxDomObject":Lc8/HYf;
    :cond_1
    return-void
.end method

.method public registerComponent(Ljava/lang/String;Lc8/tbg;)V
    .locals 2
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "comp"    # Lc8/tbg;

    .prologue
    .line 368
    iget-object v0, p0, Lc8/oYf;->mWXRenderManager:Lc8/Cag;

    iget-object v1, p0, Lc8/oYf;->mInstanceId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lc8/Cag;->registerComponent(Ljava/lang/String;Ljava/lang/String;Lc8/tbg;)V

    .line 369
    return-void
.end method

.method public registerDOMObject(Ljava/lang/String;Lc8/HYf;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
    .param p2, "obj"    # Lc8/HYf;

    .prologue
    .line 358
    iget-object v0, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public unregisterDOMObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;

    .prologue
    .line 363
    iget-object v0, p0, Lc8/oYf;->mRegistry:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-void
.end method
