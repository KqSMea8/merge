.class public Lc8/pVf;
.super Ljava/lang/Object;
.source "WXSDKManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/oVf;
    }
.end annotation


# static fields
.field private static final DEFAULT_VIEWPORT_WIDTH:I = 0x2ee

.field private static sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile sManager:Lc8/pVf;


# instance fields
.field private mActivityNavBarSetter:Lc8/NVf;

.field private mBridgeManager:Lc8/ZWf;

.field private mCrashInfo:Lc8/wVf;

.field private mDrawableLoader:Lc8/AVf;

.field private mIWXHttpAdapter:Lc8/DVf;

.field private mIWXImgLoaderAdapter:Lc8/EVf;

.field private mIWXJSExceptionAdapter:Lc8/FVf;

.field private mIWXSoLoaderAdapter:Lc8/GVf;

.field private mIWXStorageAdapter:Lc8/oWf;

.field private mIWXUserTrackAdapter:Lc8/HVf;

.field private mIWebSocketAdapterFactory:Lc8/AWf;

.field private mLifeCycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/oVf;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedInitV8:Z

.field private mStatisticsListener:Lc8/OUf;

.field private mTracingAdapter:Lc8/BVf;

.field private mURIAdapter:Lc8/IVf;

.field private final mWXDomManager:Lc8/EYf;

.field mWXRenderManager:Lc8/Cag;

.field private mWXValidateProcessor:Lc8/iXf;

.field private final mWXWorkThreadManager:Lc8/WXf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/pVf;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lc8/Cag;

    invoke-direct {v0}, Lc8/Cag;-><init>()V

    invoke-direct {p0, v0}, Lc8/pVf;-><init>(Lc8/Cag;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Lc8/Cag;)V
    .locals 2
    .param p1, "renderManager"    # Lc8/Cag;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/pVf;->mNeedInitV8:Z

    .line 102
    iput-object p1, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    .line 103
    new-instance v0, Lc8/EYf;

    iget-object v1, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    invoke-direct {v0, v1}, Lc8/EYf;-><init>(Lc8/Cag;)V

    iput-object v0, p0, Lc8/pVf;->mWXDomManager:Lc8/EYf;

    .line 104
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    .line 105
    new-instance v0, Lc8/WXf;

    invoke-direct {v0}, Lc8/WXf;-><init>()V

    iput-object v0, p0, Lc8/pVf;->mWXWorkThreadManager:Lc8/WXf;

    .line 106
    return-void
.end method

.method public static getInstance()Lc8/pVf;
    .locals 2

    .prologue
    .line 158
    sget-object v0, Lc8/pVf;->sManager:Lc8/pVf;

    if-nez v0, :cond_1

    .line 159
    const-class v1, Lc8/pVf;

    monitor-enter v1

    .line 160
    :try_start_0
    sget-object v0, Lc8/pVf;->sManager:Lc8/pVf;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lc8/pVf;

    invoke-direct {v0}, Lc8/pVf;-><init>()V

    sput-object v0, Lc8/pVf;->sManager:Lc8/pVf;

    .line 163
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :cond_1
    sget-object v0, Lc8/pVf;->sManager:Lc8/pVf;

    return-object v0

    .line 163
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstanceViewPortWidth(Ljava/lang/String;)I
    .locals 2
    .param p0, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/pVf;->getSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    .line 170
    .local v0, "instance":Lc8/nVf;
    if-nez v0, :cond_0

    .line 171
    const/16 v1, 0x2ee

    .line 173
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lc8/nVf;->getInstanceViewPortWidth()I

    move-result v1

    goto :goto_0
.end method

.method static initInstance(Lc8/Cag;)V
    .locals 1
    .param p0, "renderManager"    # Lc8/Cag;

    .prologue
    .line 112
    new-instance v0, Lc8/pVf;

    invoke-direct {v0, p0}, Lc8/pVf;-><init>(Lc8/Cag;)V

    sput-object v0, Lc8/pVf;->sManager:Lc8/pVf;

    .line 113
    return-void
.end method

.method static setInstance(Lc8/pVf;)V
    .locals 0
    .param p0, "manager"    # Lc8/pVf;

    .prologue
    .line 177
    sput-object p0, Lc8/pVf;->sManager:Lc8/pVf;

    .line 178
    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "funcId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0, p1, p2, p3}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 228
    return-void
.end method

.method public callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "funcId"    # Ljava/lang/String;
    .param p4, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    .local p3, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 233
    return-void
.end method

.method createInstance(Lc8/nVf;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "code"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/nVf;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    invoke-virtual {v2, p1}, Lc8/Cag;->registerInstance(Lc8/nVf;)V

    .line 277
    iget-object v2, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p3, p4}, Lc8/ZWf;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oVf;

    .line 280
    .local v0, "callbacks":Lc8/oVf;
    invoke-virtual {p1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lc8/oVf;->onInstanceCreated(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0    # "callbacks":Lc8/oVf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lc8/pVf;->mWXDomManager:Lc8/EYf;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lc8/pVf;->mWXDomManager:Lc8/EYf;

    invoke-virtual {v0}, Lc8/EYf;->destroy()V

    .line 220
    :cond_0
    iget-object v0, p0, Lc8/pVf;->mWXWorkThreadManager:Lc8/WXf;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lc8/pVf;->mWXWorkThreadManager:Lc8/WXf;

    invoke-virtual {v0}, Lc8/WXf;->destroy()V

    .line 223
    :cond_1
    return-void
.end method

.method destroyInstance(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string/jumbo v2, "wx_current_url"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Lc8/pVf;->setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-static {}, Lc8/Dgg;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_1

    .line 295
    new-instance v2, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v3, "[WXSDKManager] destroyInstance error"

    invoke-direct {v2, v3}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_1
    iget-object v2, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oVf;

    .line 299
    .local v0, "callbacks":Lc8/oVf;
    invoke-interface {v0, p1}, Lc8/oVf;->onInstanceDestroyed(Ljava/lang/String;)V

    goto :goto_1

    .line 302
    .end local v0    # "callbacks":Lc8/oVf;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    invoke-virtual {v2, p1}, Lc8/Cag;->removeRenderStatement(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lc8/pVf;->mWXDomManager:Lc8/EYf;

    invoke-virtual {v2, p1}, Lc8/EYf;->removeDomStatement(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v2, p1}, Lc8/ZWf;->destroyInstance(Ljava/lang/String;)V

    .line 305
    invoke-static {p1}, Lc8/cXf;->destroyInstanceModules(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lc8/pVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 253
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/pVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 262
    return-void
.end method

.method public fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "ref"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "[WXSDKManager]  fireEvent error"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/ZWf;->fireEventOnNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 273
    return-void
.end method

.method generateInstanceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lc8/pVf;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivityNavBarSetter()Lc8/NVf;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lc8/pVf;->mActivityNavBarSetter:Lc8/NVf;

    return-object v0
.end method

.method public getDrawableLoader()Lc8/AVf;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lc8/pVf;->mDrawableLoader:Lc8/AVf;

    return-object v0
.end method

.method public getIWXHttpAdapter()Lc8/DVf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lc8/pVf;->mIWXHttpAdapter:Lc8/DVf;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lc8/uVf;

    invoke-direct {v0}, Lc8/uVf;-><init>()V

    iput-object v0, p0, Lc8/pVf;->mIWXHttpAdapter:Lc8/DVf;

    .line 336
    :cond_0
    iget-object v0, p0, Lc8/pVf;->mIWXHttpAdapter:Lc8/DVf;

    return-object v0
.end method

.method public getIWXImgLoaderAdapter()Lc8/EVf;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lc8/pVf;->mIWXImgLoaderAdapter:Lc8/EVf;

    return-object v0
.end method

.method public getIWXJSExceptionAdapter()Lc8/FVf;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lc8/pVf;->mIWXJSExceptionAdapter:Lc8/FVf;

    return-object v0
.end method

.method public getIWXSoLoaderAdapter()Lc8/GVf;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lc8/pVf;->mIWXSoLoaderAdapter:Lc8/GVf;

    return-object v0
.end method

.method public getIWXStorageAdapter()Lc8/oWf;
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lc8/pVf;->mIWXStorageAdapter:Lc8/oWf;

    if-nez v0, :cond_0

    .line 364
    sget-object v0, Lc8/UUf;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Lc8/lWf;

    sget-object v1, Lc8/UUf;->sApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lc8/lWf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/pVf;->mIWXStorageAdapter:Lc8/oWf;

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/pVf;->mIWXStorageAdapter:Lc8/oWf;

    return-object v0

    .line 367
    :cond_1
    const-string/jumbo v0, "WXStorageModule"

    const-string/jumbo v1, "No Application context found,you should call WXSDKEngine#initialize() method in your application"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIWXUserTrackAdapter()Lc8/HVf;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lc8/pVf;->mIWXUserTrackAdapter:Lc8/HVf;

    return-object v0
.end method

.method public getIWXWebSocketAdapter()Lc8/zWf;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lc8/pVf;->mIWebSocketAdapterFactory:Lc8/AWf;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lc8/pVf;->mIWebSocketAdapterFactory:Lc8/AWf;

    invoke-interface {v0}, Lc8/AWf;->createWebSocketAdapter()Lc8/zWf;

    move-result-object v0

    .line 409
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSDKInstance(Ljava/lang/String;)Lc8/nVf;
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    invoke-virtual {v0, p1}, Lc8/Cag;->getWXSDKInstance(Ljava/lang/String;)Lc8/nVf;

    move-result-object v0

    goto :goto_0
.end method

.method public getTracingAdapter()Lc8/BVf;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lc8/pVf;->mTracingAdapter:Lc8/BVf;

    return-object v0
.end method

.method public getURIAdapter()Lc8/IVf;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lc8/pVf;->mURIAdapter:Lc8/IVf;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lc8/qVf;

    invoke-direct {v0}, Lc8/qVf;-><init>()V

    iput-object v0, p0, Lc8/pVf;->mURIAdapter:Lc8/IVf;

    .line 343
    :cond_0
    iget-object v0, p0, Lc8/pVf;->mURIAdapter:Lc8/IVf;

    return-object v0
.end method

.method public getValidateProcessor()Lc8/iXf;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lc8/pVf;->mWXValidateProcessor:Lc8/iXf;

    return-object v0
.end method

.method public getWXBridgeManager()Lc8/ZWf;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    return-object v0
.end method

.method public getWXDomManager()Lc8/EYf;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lc8/pVf;->mWXDomManager:Lc8/EYf;

    return-object v0
.end method

.method public getWXRenderManager()Lc8/Cag;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    return-object v0
.end method

.method public getWXStatisticsListener()Lc8/OUf;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc8/pVf;->mStatisticsListener:Lc8/OUf;

    return-object v0
.end method

.method public getWXWorkThreadManager()Lc8/WXf;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lc8/pVf;->mWXWorkThreadManager:Lc8/WXf;

    return-object v0
.end method

.method public initScriptsFramework(Ljava/lang/String;)V
    .locals 1
    .param p1, "framework"    # Ljava/lang/String;

    .prologue
    .line 236
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0, p1}, Lc8/ZWf;->initScriptsFramework(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public needInitV8()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lc8/pVf;->mNeedInitV8:Z

    return v0
.end method

.method public notifySerializeCodeCache()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0}, Lc8/ZWf;->notifySerializeCodeCache()V

    .line 402
    return-void
.end method

.method public notifyTrimMemory()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0}, Lc8/ZWf;->notifyTrimMemory()V

    .line 389
    return-void
.end method

.method public onSDKEngineInitialize()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lc8/pVf;->mStatisticsListener:Lc8/OUf;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lc8/pVf;->mStatisticsListener:Lc8/OUf;

    invoke-interface {v0}, Lc8/OUf;->onSDKEngineInitialize()V

    .line 127
    :cond_0
    return-void
.end method

.method public postOnUiThread(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 213
    iget-object v0, p0, Lc8/pVf;->mWXRenderManager:Lc8/Cag;

    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lc8/Cag;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 214
    return-void
.end method

.method refreshInstance(Ljava/lang/String;Lc8/PXf;)V
    .locals 1
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "jsonData"    # Lc8/PXf;

    .prologue
    .line 286
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0, p1, p2}, Lc8/ZWf;->refreshInstance(Ljava/lang/String;Lc8/PXf;)V

    .line 287
    return-void
.end method

.method public registerComponents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0, p1}, Lc8/ZWf;->registerComponents(Ljava/util/List;)V

    .line 241
    return-void
.end method

.method public registerInstanceLifeCycleCallbacks(Lc8/oVf;)V
    .locals 1
    .param p1, "callbacks"    # Lc8/oVf;

    .prologue
    .line 440
    iget-object v0, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    .line 443
    :cond_0
    iget-object v0, p0, Lc8/pVf;->mLifeCycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public registerModules(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "modules":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0, p1}, Lc8/ZWf;->registerModules(Ljava/util/Map;)V

    .line 245
    return-void
.end method

.method public registerStatisticsListener(Lc8/OUf;)V
    .locals 0
    .param p1, "listener"    # Lc8/OUf;

    .prologue
    .line 116
    iput-object p1, p0, Lc8/pVf;->mStatisticsListener:Lc8/OUf;

    .line 117
    return-void
.end method

.method public registerValidateProcessor(Lc8/iXf;)V
    .locals 0
    .param p1, "processor"    # Lc8/iXf;

    .prologue
    .line 413
    iput-object p1, p0, Lc8/pVf;->mWXValidateProcessor:Lc8/iXf;

    .line 414
    return-void
.end method

.method public restartBridge()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v0}, Lc8/ZWf;->restart()V

    .line 190
    return-void
.end method

.method public setActivityNavBarSetter(Lc8/NVf;)V
    .locals 0
    .param p1, "mActivityNavBarSetter"    # Lc8/NVf;

    .prologue
    .line 185
    iput-object p1, p0, Lc8/pVf;->mActivityNavBarSetter:Lc8/NVf;

    .line 186
    return-void
.end method

.method public setCrashInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lc8/pVf;->mCrashInfo:Lc8/wVf;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lc8/pVf;->mCrashInfo:Lc8/wVf;

    invoke-interface {v0, p1, p2}, Lc8/wVf;->addCrashInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method

.method public setCrashInfoReporter(Lc8/wVf;)V
    .locals 0
    .param p1, "mCrashInfo"    # Lc8/wVf;

    .prologue
    .line 422
    iput-object p1, p0, Lc8/pVf;->mCrashInfo:Lc8/wVf;

    .line 423
    return-void
.end method

.method public setIWXJSExceptionAdapter(Lc8/FVf;)V
    .locals 0
    .param p1, "IWXJSExceptionAdapter"    # Lc8/FVf;

    .prologue
    .line 329
    iput-object p1, p0, Lc8/pVf;->mIWXJSExceptionAdapter:Lc8/FVf;

    .line 330
    return-void
.end method

.method setInitConfig(Lc8/RUf;)V
    .locals 1
    .param p1, "config"    # Lc8/RUf;

    .prologue
    .line 351
    invoke-virtual {p1}, Lc8/RUf;->getHttpAdapter()Lc8/DVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWXHttpAdapter:Lc8/DVf;

    .line 352
    invoke-virtual {p1}, Lc8/RUf;->getImgAdapter()Lc8/EVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWXImgLoaderAdapter:Lc8/EVf;

    .line 353
    invoke-virtual {p1}, Lc8/RUf;->getDrawableLoader()Lc8/AVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mDrawableLoader:Lc8/AVf;

    .line 354
    invoke-virtual {p1}, Lc8/RUf;->getStorageAdapter()Lc8/oWf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWXStorageAdapter:Lc8/oWf;

    .line 355
    invoke-virtual {p1}, Lc8/RUf;->getUtAdapter()Lc8/HVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWXUserTrackAdapter:Lc8/HVf;

    .line 356
    invoke-virtual {p1}, Lc8/RUf;->getURIAdapter()Lc8/IVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mURIAdapter:Lc8/IVf;

    .line 357
    invoke-virtual {p1}, Lc8/RUf;->getWebSocketAdapterFactory()Lc8/AWf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWebSocketAdapterFactory:Lc8/AWf;

    .line 358
    invoke-virtual {p1}, Lc8/RUf;->getJSExceptionAdapter()Lc8/FVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWXJSExceptionAdapter:Lc8/FVf;

    .line 359
    invoke-virtual {p1}, Lc8/RUf;->getIWXSoLoaderAdapter()Lc8/GVf;

    move-result-object v0

    iput-object v0, p0, Lc8/pVf;->mIWXSoLoaderAdapter:Lc8/GVf;

    .line 360
    return-void
.end method

.method public setNeedInitV8(Z)V
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lc8/pVf;->mNeedInitV8:Z

    .line 131
    return-void
.end method

.method public setTracingAdapter(Lc8/BVf;)V
    .locals 0
    .param p1, "adapter"    # Lc8/BVf;

    .prologue
    .line 432
    iput-object p1, p0, Lc8/pVf;->mTracingAdapter:Lc8/BVf;

    .line 433
    return-void
.end method

.method public takeJSHeapSnapshot(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v3, Lc8/pVf;->sInstanceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "name":Ljava/lang/String;
    move-object v1, p1

    .line 148
    .local v1, "filename":Ljava/lang/String;
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".heapsnapshot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    iget-object v3, p0, Lc8/pVf;->mBridgeManager:Lc8/ZWf;

    invoke-virtual {v3, v1}, Lc8/ZWf;->takeJSHeapSnapshot(Ljava/lang/String;)V

    goto :goto_0
.end method
