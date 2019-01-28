.class public Lc8/kOp;
.super Ljava/lang/Object;
.source "MtopConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iOp;,
        Lc8/jOp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopConfig"


# instance fields
.field public antiAttackHandler:Lc8/kNp;

.field public appKey:Ljava/lang/String;

.field public appKeyIndex:I

.field public appVersion:Ljava/lang/String;

.field public authCode:Ljava/lang/String;

.field public cacheImpl:Lc8/jO;

.field public callFactory:Lc8/wPp;

.field public context:Landroid/content/Context;

.field public dailyAppkeyIndex:I

.field public deviceId:Ljava/lang/String;

.field public volatile enableNewDeviceId:Z

.field public entrance:Lmtopsdk/mtop/domain/EntranceEnum;

.field public envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public filterManager:Lc8/dNp;

.field public final instanceId:Ljava/lang/String;

.field public isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected loadPropertyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mtopDomain:Lc8/jOp;

.field public final mtopFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mtopGlobalABTestParams:Ljava/util/Map;
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

.field public final mtopGlobalHeaders:Ljava/util/Map;
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

.field public final mtopGlobalQuerys:Ljava/util/Map;
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

.field public mtopInstance:Lc8/AOp;

.field protected final mtopProperties:Ljava/util/Map;
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

.field public volatile notifySessionResult:Z

.field public onlineAppKeyIndex:I

.field public processId:I

.field public volatile sign:Lc8/gQp;

.field public ttid:Ljava/lang/String;

.field public unitService:Lc8/cPp;

.field public uploadStats:Lc8/aPp;

.field public utdid:Ljava/lang/String;

.field public wuaAuthCode:Ljava/lang/String;

.field public xOrangeQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "instanceId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    iput-object v0, p0, Lc8/kOp;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 56
    sget-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v0, p0, Lc8/kOp;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 62
    iput v1, p0, Lc8/kOp;->onlineAppKeyIndex:I

    .line 65
    iput v1, p0, Lc8/kOp;->dailyAppkeyIndex:I

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/kOp;->isAllowSwitchEnv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 124
    iput-boolean v1, p0, Lc8/kOp;->notifySessionResult:Z

    .line 129
    iput-boolean v2, p0, Lc8/kOp;->enableNewDeviceId:Z

    .line 134
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lc8/kOp;->mtopFeatures:Ljava/util/Set;

    .line 139
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/kOp;->mtopProperties:Ljava/util/Map;

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/kOp;->mtopGlobalHeaders:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/kOp;->mtopGlobalQuerys:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/kOp;->mtopGlobalABTestParams:Ljava/util/Map;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/kOp;->loadPropertyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    iput-object v3, p0, Lc8/kOp;->callFactory:Lc8/wPp;

    .line 171
    iput-object v3, p0, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 176
    new-instance v0, Lc8/jOp;

    invoke-direct {v0}, Lc8/jOp;-><init>()V

    iput-object v0, p0, Lc8/kOp;->mtopDomain:Lc8/jOp;

    .line 39
    iput-object p1, p0, Lc8/kOp;->instanceId:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getMtopProperties()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v8, p0, Lc8/kOp;->loadPropertyFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 253
    :try_start_0
    iget-object v8, p0, Lc8/kOp;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 254
    .local v0, "am":Landroid/content/res/AssetManager;
    const-string/jumbo v8, "mtopsdk.property"

    invoke-virtual {v0, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 255
    .local v3, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 256
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v6, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 257
    invoke-virtual {v6}, Ljava/util/Properties;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 258
    invoke-virtual {v6}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 259
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    .line 261
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 262
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 263
    .local v5, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 264
    .local v7, "value":Ljava/lang/Object;
    if-eqz v5, :cond_1

    if-eqz v7, :cond_1

    .line 265
    iget-object v8, p0, Lc8/kOp;->mtopProperties:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 269
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v8, "mtopsdk.MtopConfig"

    const-string/jumbo v9, "load mtopsdk.property in android assets directory error."

    invoke-static {v8, v9, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 279
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v6    # "properties":Ljava/util/Properties;
    :catch_1
    move-exception v8

    const-string/jumbo v8, "mtopsdk.MtopConfig"

    const-string/jumbo v9, "load mtopsdk.property in android assets directory failed!"

    invoke-static {v8, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :cond_0
    :goto_1
    iget-object v8, p0, Lc8/kOp;->mtopProperties:Ljava/util/Map;

    return-object v8

    .line 267
    .restart local v0    # "am":Landroid/content/res/AssetManager;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v6    # "properties":Ljava/util/Properties;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_3
    const-string/jumbo v8, "mtopsdk.MtopConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid mtopsdk property,key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",value="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 275
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v5    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_4
    sget-object v8, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v8}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 276
    const-string/jumbo v8, "mtopsdk.MtopConfig"

    const-string/jumbo v9, " load mtopsdk.property file in android assets directory succeed"

    invoke-static {v8, v9}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public registerMtopSdkProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 236
    invoke-static {p1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lc8/kOp;->getMtopProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "mtopsdk.MtopConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[registerMtopSdkProperty]register MtopSdk Property succeed,key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method
